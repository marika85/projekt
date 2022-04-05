#!/usr/bin/env python
# -*- coding: cp1250 -*-

import sys

def convertXLS2CSV(aFile): 
 
        print "------ beginning to convert XLS to CSV ------"
#    try:
        import os
        import time 
        import win32com.client
        excel = win32com.client.Dispatch('Excel.Application')
 
        fileDir, fileName = os.path.split(aFile)
        nameOnly = os.path.splitext(fileName)
        newName = nameOnly[0] + ".csv"
        outCSV = os.path.join(fileDir, newName)
        workbook = excel.Workbooks.Open(os.path.join(os.getcwd(),aFile))
#        workbook = excel.Workbooks.Open(aFile)
        workbook.SaveAs(os.path.join(os.getcwd(), outCSV), FileFormat=24)
        workbook.Close(False)
        excel.Quit()
        time.sleep(3) # give Excel time to quit, otherwise files may be locked 
        del excel  
#        print "...Converted " + nameOnly + " to CSV"
#    except:
#        print ">>>>>>> FAILED to convert " + aFile + " to CSV!"

def arg(n):
    try:
        res = sys.argv[n]
    except IndexError:
        res = '1'
    return res

if __name__ == '__main__':
  param = arg(1)
  convertXLS2CSV(param)
#  convertXLS2CSV(r"opti.xls")
