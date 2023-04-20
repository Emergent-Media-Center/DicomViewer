/*=========================================================================

  Program: GDCM (Grassroots DICOM). A DICOM library

  Copyright (c) 2006-2011 Mathieu Malaterre
  All rights reserved.
  See Copyright.txt or http://gdcm.sourceforge.net/Copyright.html for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

using System;
using gdcm;

public class FCTS_RLE
{
  public static int Main(string[] args)
    {
    string filename = args[0];
    string outfilename = args[1];

    using( var sfcts = FileChangeTransferSyntax.New() )
      {
      FileChangeTransferSyntax fcts = sfcts.__ref__();
      //SimpleSubjectWatcher watcher = new SimpleSubjectWatcher(fcts, "FileChangeTransferSyntax");
      gdcm.TransferSyntax ts = new TransferSyntax( TransferSyntax.TSType.RLELossless );
      fcts.SetTransferSyntax( ts );
      ImageCodec ic = fcts.GetCodec();
      RLECodec rle = RLECodec.Cast( ic );
      // need to call at least one member func to check not NULL:
      long val = rle.GetBufferLength();
      System.Console.WriteLine( val ); // use val to remove a warning

      fcts.SetInputFileName( filename );
      fcts.SetOutputFileName( outfilename );
      if( !fcts.Change() )
        {
        return 1;
        }
      }

    return 0;
    }
}
