/**
  ******************************************************************************
  * @file   fatfs.c
  * @brief  Code for fatfs applications
  ******************************************************************************
  *
  * Copyright (c) 2017 STMicroelectronics International N.V. 
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without 
  * modification, are permitted, provided that the following conditions are met:
  *
  * 1. Redistribution of source code must retain the above copyright notice, 
  *    this list of conditions and the following disclaimer.
  * 2. Redistributions in binary form must reproduce the above copyright notice,
  *    this list of conditions and the following disclaimer in the documentation
  *    and/or other materials provided with the distribution.
  * 3. Neither the name of STMicroelectronics nor the names of other 
  *    contributors to this software may be used to endorse or promote products 
  *    derived from this software without specific written permission.
  * 4. This software, including modifications and/or derivative works of this 
  *    software, must execute solely and exclusively on microcontroller or
  *    microprocessor devices manufactured by or for STMicroelectronics.
  * 5. Redistribution and use of this software other than as permitted under 
  *    this license is void and will automatically terminate your rights under 
  *    this license. 
  *
  * THIS SOFTWARE IS PROVIDED BY STMICROELECTRONICS AND CONTRIBUTORS "AS IS" 
  * AND ANY EXPRESS, IMPLIED OR STATUTORY WARRANTIES, INCLUDING, BUT NOT 
  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
  * PARTICULAR PURPOSE AND NON-INFRINGEMENT OF THIRD PARTY INTELLECTUAL PROPERTY
  * RIGHTS ARE DISCLAIMED TO THE FULLEST EXTENT PERMITTED BY LAW. IN NO EVENT 
  * SHALL STMICROELECTRONICS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
  * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
  * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
  * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */

#include "fatfs.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

uint8_t retUSER;    /* Return value for USER */
char USER_Path[4];  /* USER logical drive path */
BYTE buffer[14];   /* File copy buffer */

/* USER CODE BEGIN Variables */

FATFS FatFs;    /* File system object for User logical drive */
FIL   Fil;    /* File object */
uint32_t wbytes;  /* File write counts */
//uint8_t wtext[] = "text to write logical disk by elgarbe"; /* File write buffer */
extern uint8_t rxBuff[14];
uint8_t sdReadBuffer[14];
//extern void Error_Handler(void);

/* USER CODE END Variables */    

void MX_FATFS_Init(void) 
{
  HAL_Delay(5000);
  //CDC_Transmit_FS("FATFS_Init\n\r",12);
      /*## FatFS: Link the USER driver ###########################*/
      retUSER = FATFS_LinkDriver(&USER_Driver, USER_Path);

  /* USER CODE BEGIN Init */
  uint16_t lastLog=0;
  UINT bw;        // bytes escritos
  uint8_t dummyWrite = '\n';
  if(retUSER == 0)
  {
    if(f_mount(&FatFs, (TCHAR const*)USER_Path, 0) == FR_OK)
    {
      // Busco el último LOG en la SD y creo el archivo para loguear
      lastLog = fs_get_last_log("/");
      HAL_Delay(10);
      fs_CreateLOG(lastLog + 1);
      HAL_Delay(10);
      //f_write(&Fil, &dummyWrite, 1, &bw);
      //HAL_Delay(10);
      f_lseek(&Fil, 0);
    }else{
      CDC_Transmit_FS("ErrorInit1",10);
      Error_Handler();
    }
  }else{
    CDC_Transmit_FS("ErrorInit2",10);
    Error_Handler();
  }
  /* USER CODE END Init */
}

/**
  * @brief  Gets Time from RTC 
  * @param  None
  * @retval Time in DWORD
  */
DWORD get_fattime(void)
{
  /* USER CODE BEGIN get_fattime */
  return 0;
  /* USER CODE END get_fattime */  
}

/* USER CODE BEGIN Application */
void parse(uint8_t* pStr)
{
  char val[10]={0};
  uint8_t special[3]={0};
  uint8_t unit[3]={0};
  double multp = 1;
  char dataToPrint[40]={0};
  CDC_Transmit_FS("Parse!!\n\r",9);
        HAL_Delay(10);
  CDC_Transmit_FS("Value: ",7);
        HAL_Delay(10);
  CDC_Transmit_FS(pStr,14);
        HAL_Delay(10);

  switch (pStr[0])
  {
    case 0x30:
      val[1] = ',';
      break;
    case 0x31:
      val[2] = ',';
      break;
    case 0x32:
      val[3] = ',';
      break;
    case 0x34:
      val[4] = ',';
      break;
    // default case is no comma/decimal point at all.
  }

	switch (pStr[6]) {
	case '1':
		unit[0] = 'D';
		unit[1] = 'I';
		break;

	case '2':
		unit[0] = 'H';
                unit[1] = 'z';
		switch (pStr[0]) {
		case '0':
			multp = 0.01;
			break;
		case '1':
			multp = 0.1;
			break;
		case '3':
			multp = 1;
			break;
		case '4':
			multp = 10;
			break;
		case '5':
			multp = 100;
			break;
		case '6':
			multp = 1000;
			break;
		case '7':
			multp = 10000;
			break;
		default:
			CDC_Transmit_FS("Error\n\r",7);
		}
		break;

	case '3':
                unit[0] = 'O';
                unit[1] = 'h';
                unit[2] = 'm';
		switch (pStr[0]) {
		case '0':
			multp = 0.01;
			break;
		case '1':
			multp = 0.1;
			break;
		case '2':
			multp = 1;
			break;
		case '3':
			multp = 10;
			break;
		case '4':
			multp = 100;
			break;
		case '5':
			multp = 1000;
			break;
		case '6':
			multp = 10000;
			break;
		default:
			CDC_Transmit_FS("Error\n\r",7);
		break;
		}
	case '5':
		unit[0] = 'O';
                unit[1] = 'h';
                unit[2] = 'm';
		break;

	case '6':
		unit[0] = 'F';
		switch (pStr[0]) {
		case '0':
			multp = 0.12;
			break;
		case '1':
			multp = 0.11;
			break;
		case '2':
			multp = 0.10;
			break;
		case '3':
			multp = 0.000000001;
			break;
		case '4':
			multp = 0.00000001;
			break;
		case '5':
			multp = 0.0000001;
			break;
		case '6':
			multp = 0.000001;
			break;
		case '7':
			multp = 0.00001;
			break;
		default:
			CDC_Transmit_FS("Error\n\r",7);
		}
		break;

	case 0x3b: 
		unit[0] = 'V';
		switch (pStr[0]) {
		case '0':
			multp = 0.0001;
			break;
		case '1':
			multp = 0.001;
			break;
		case '2':
			multp = 0.01;
			break;
		case '3':
			multp = 0.1;
			break;
		case '4':
			multp = 0.00001;
			break;
		default:
			CDC_Transmit_FS("Error\n\r",7);
		}
		break;

	case '0': // A
		unit[0] = 'A';
		if (pStr[0] == '0')
			multp = 0.001;
		else {
			CDC_Transmit_FS("Error\n\r",7);
		}
		break;

	case 0x3d: // uA
                unit[0] = 'u';
                unit[1] = 'A';
		switch (pStr[0]) {
		case '0':
			multp = 0.00000001;
			break;
		case '1':
			multp = 0.0000001;
			break;
		default:
			CDC_Transmit_FS("Error\n\r",7);
		}

		break;
	case 0x3f: // mA
		unit[0] = 'm';
		unit[1] = 'A';
		switch (pStr[0]) {
		case '0':
			multp = 0.000001;
			break;
		case '1':
			multp = 0.00001;
			break;
		default:
			CDC_Transmit_FS("Error\n\r",7);
		}

		break;
	default:
		CDC_Transmit_FS("Error\n\r",7);
	}



  switch (pStr[6]) {
	}
  if (pStr[10] & 8){
	special[0] = 'D';
	special[1] = 'C';
  }
  else if (pStr[10] & 4){
        special[0] = 'A';
        special[1] = 'C';
  }
  //printf("\n\r");

 double d_val = atof(val);

  if(pStr[7] & 0x04){
        d_val = d_val * -1;
  }

  d_val = d_val * multp;
  uint8_t dataToPrintSize = sprintf(dataToPrint,"Val: %s;d_val: %f;unit: %s;special: %s\r\n",val,d_val,unit, special);
  CDC_Transmit_FS(dataToPrint,dataToPrintSize);
}




FRESULT fs_CreateLOG(uint16_t numLOG)
{

  FRESULT rc;       /* Result code */
  uint8_t NomLOG[11]="LOGxxxx.TXT";
  NomLOG[3] = numLOG/1000 + 48;
  numLOG -= (numLOG/1000)*1000;
  NomLOG[4] = numLOG/100 + 48;
  numLOG -= (numLOG/100)*100;
  NomLOG[5] = numLOG/10 + 48;
  numLOG -= (numLOG/10)*10;
  NomLOG[6] = numLOG/1 + 48;

  rc = f_open(&Fil, (const char *)NomLOG, FA_WRITE | FA_CREATE_ALWAYS);
  HAL_Delay(10);
  if(rc == FR_OK)
  {
    f_sync(&Fil);
    CDC_Transmit_FS(NomLOG,11);
    CDC_Transmit_FS(" File created\n\r",15);
  }
  else{
    CDC_Transmit_FS("File opening failed\n\r",19);
  }
  return rc;
}

void readLastFile(void){
      uint16_t lastLog=0;
      lastLog = fs_get_last_log("/");
      HAL_Delay(10);
      fs_ReadFile(lastLog);
}

FRESULT fs_ReadFile (uint16_t numLOG){

  uint8_t buffer[14];   /* File copy buffer */
   // FRESULT fr;          /* FatFs function common result code */
  UINT br;         /* File read/write count */
  FRESULT rc;       /* Result code */
  uint16_t lastLog=0;
  uint8_t NomLOG[11]="LOGxxxx.TXT";
  NomLOG[3] = numLOG/1000 + 48;
  numLOG -= (numLOG/1000)*1000;
  NomLOG[4] = numLOG/100 + 48;
  numLOG -= (numLOG/100)*100;
  NomLOG[5] = numLOG/10 + 48;
  numLOG -= (numLOG/10)*10;
  NomLOG[6] = numLOG/1 + 48;

  CDC_Transmit_FS("Start\n\r",7);
  f_close(&Fil);
  //lastLog = fs_get_last_log("/");
  f_open(&Fil, (const char *)NomLOG ,FA_READ | FA_OPEN_EXISTING);
  if(rc == FR_OK)
  {
    f_sync(&Fil);
    CDC_Transmit_FS(NomLOG,11);
    CDC_Transmit_FS(" File opened\n\r",14);
  }
  else{
    CDC_Transmit_FS("File opening failed\n\r",19);
  }

for (;;) {
        rc = f_read(&Fil, buffer, sizeof buffer, &br);  /* Read a chunk of source file */
        if (rc || br == 0) break; /* error or eof */
	f_gets(buffer,14,&Fil);
	buffer[12]= '\n';
	buffer[13]= '\r';
  	CDC_Transmit_FS("Before parse!!\n\r",16);
        HAL_Delay(10);
  	CDC_Transmit_FS("Address: ",9);
	HAL_Delay(10);
  	CDC_Transmit_FS(&buffer,14);
        HAL_Delay(10);
  	CDC_Transmit_FS("\n\r",2);
        HAL_Delay(10);
 	CDC_Transmit_FS("Value: ",7);
        HAL_Delay(10);
  	CDC_Transmit_FS(buffer,14);
        HAL_Delay(10);
	parse(buffer);
	HAL_Delay(100);
}
f_close(&Fil);
return rc;
}


FRESULT fs_WriteFile(void)
{
BYTE buffer[14];   /* File copy buffer */
UINT bw;        // bytes escritos
FRESULT rc;       // Result code

rc = f_write(&Fil, rxBuffer, 14, &bw);
HAL_Delay(10);
rc = f_sync(&Fil);

return rc;
}

/* Fusco el mayor de los LOGxxxx.TXT */
uint16_t fs_get_last_log (char* path)
{
    FRESULT res;
    FILINFO fno;
    DIR dir;

    uint16_t Fileint;   // El número del archivo en formato numerico
    uint16_t Filemax=0;

    res = f_opendir(&dir, path);            /* Open the directory */
    if (res == FR_OK)
    {
        for (;;)
        {
            res = f_readdir(&dir, &fno);                   /* Read a directory item */
            if (res != FR_OK || fno.fname[0] == 0) break;  /* Break on error or end of dir */
            if (fno.fname[0] == '.') continue;             /* Ignore dot entry */
            if (fno.fattrib & AM_ARC)             /* It is a file. */
            {
              // Verifico que sea un LOGxxxx.TXT
                if(fno.fname[0]=='L' && fno.fname[1]=='O' && fno.fname[2]=='G' &&
                  fno.fname[7]=='.' && fno.fname[8]=='T' && fno.fname[9]=='X' && fno.fname[10]=='T')
                {
          Fileint = (fno.fname[6]-48)     + (fno.fname[5]-48)*10 +
                (fno.fname[4]-48)*100 + (fno.fname[3]-48)*1000;
          if(Fileint>Filemax)
            Filemax=Fileint;
                }
            }
        }
    }
    return Filemax;
}
     
/* USER CODE END Application */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
