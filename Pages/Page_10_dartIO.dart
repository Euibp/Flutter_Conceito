import 'dart:io';
import 'package:archive/archive_io.dart';
import 'package:path/path.dart';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:archive/archive.dart';


class DartIO extends StatefulWidget {



  @override
  _DartIOState createState() => _DartIOState();
}

class _DartIOState extends State<DartIO> {
  String directoryPath;
  String fileName;
  Directory directoryDocuments;


  @override
  void initState(){
   super.initState();
   setDirectories();
  }

  void setDirectories() async{
    directoryDocuments = await getExternalStorageDirectory();
    directoryPath = directoryDocuments.path;
    fileName = 'Teste_2_BRUNO';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Title'
              ),
              onFieldSubmitted: (String value){
                fileName = value;
              } ,
            ),
             TextFormField(
              onFieldSubmitted: (String value){
                File file = File(join(directoryPath,'$fileName.txt'));
                file.writeAsString(value);
                print("escreveu?");
              } ,
            ),
            RaisedButton(
              child: Text("ZIP"),
              onPressed: (){
                ZipFileEncoder encoder = ZipFileEncoder();
                print(directoryDocuments.path);
                encoder.zipDirectory(directoryDocuments,filename: join(directoryPath,'$fileName.zip'));
                encoder.create(join(directoryPath,'$fileName.zip'));
                encoder.addDirectory(directoryDocuments);
                encoder.addFile(File(join(directoryPath,'$fileName.txt')));
                encoder.close();
              },
            ),
          ],
        ),
        
      ),
    );
  }
}
