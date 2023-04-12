//
//  File.swift
//  exam_localDatabase
//
//  Created by R87 on 12/04/23.
//

import Foundation
import SQLite3

struct Data{
    
    var id : Int
    var name : String
}

class sqlite {
    
    static var file : OpaquePointer?
    
    
    static func createFile(){
        
        var x = FileManager.default.urls(for:.documentDirectory, in:.userDomainMask)[0]
        x.appendPathComponent("My sqlite file1.dv")
        sqlite3_open(x.path, &file)
        print(x.path)
        print("Create file")
        createTable()
      
    }
    static func createTable(){
      
        let q = "Create Table if not exists Students(name text ,id integer)"
        var table : OpaquePointer?
        sqlite3_prepare(file, q, -1, &table,nil)
        print("create Table")
        sqlite3_step(table)

    }
    static func addData(id:Int,name:String){
        
        let q = " insert into Students values ('\(id)','\(name)')"
        var data : OpaquePointer?
        sqlite3_prepare(file, q, -1, &data, nil)
        sqlite3_step(data)
        print("Create data")
        
        
    }
    static func getData()->[Data]{
        var arr = [Data]()
        let q = "select name,id from students"
        var get : OpaquePointer?
        sqlite3_prepare(file, q, -1, &get, nil)
        
        while sqlite3_step(get) == SQLITE_ROW{
            let id = sqlite3_column_text(get, 1)
            print("id = \(id);",ter)
            
        }
        
        
        
    }
    static func deleteData(id:Int,name:String){
        
         var q = " DELETE FROM  Students  WHERE id = \(id) "
        var table:OpaquePointer?
        sqlite3_prepare(file, q, -1, &table, nil)
        print("delete data")
        
    }
    
}
