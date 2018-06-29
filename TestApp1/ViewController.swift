//
//  ViewController.swift
//  TestApp1
//　Practice Swift4
//  Created by y.k. noaki on 2018/06/28.
//  Copyright © 2018年 Yuki NOAKI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() { //
        super.viewDidLoad()
        print("loaded")
        
        let cantchange = 100 //変更不可,型自動推定
        var changeable: Int = 100 //変更可能,型指定
        changeable += 1 //100+1
//        changeable++ インクリメント演算子は廃止
        print(changeable >= cantchange) //True
        
        var touple: (subject:String, point:Float) = ("国語",70.3) //タプル:複数の値をグループ化
        touple.point = 90.5 //値の更新
        print(touple.1) //90.5 touple.0 は touple.subject と同じ
        
        let logic: Bool = false //false
        let rev_logic = !logic //true
        let logictouple = (logic, rev_logic, logic && rev_logic, logic || rev_logic) //論理演算子 タプルはキー名と型を省略可能
        print(logictouple) //false,true,false,true
        
        let range1_closed = 0...5 //閉区間
        let range2_halfopen = 0..<5 //半開区間
        print(range2_halfopen.contains(5)) //false
        let range3_emptyrange = 0..<0
        print(range3_emptyrange.isEmpty) //true
        let range4 = ...5 //開始を省略
        print(range1_closed.contains(-5)) //false
        print(range4.contains(-5)) //true
        
        //bit
        
        //if
        
        for num in 0..<3 {
            print(num) //0,1,2,3
        }
        var SomeNumber = 1
        for _ in 0..<10{ //範囲から取り出した数を使わない場合は"_"を使う
            SomeNumber *= 2 //閉空間から取り出した0,1,2,...,10はfor文内で使っていない
        }
        
        let idnumber = arc4random_uniform(150) //0~150で乱数生成
        
        switch idnumber { //switch
        case 125:
            print("idは125番です。接続許可")
        case 0...100: //レンジ使用可能
            print("id \(idnumber) は0~100の間で、接続が拒否されています。")
        default:
            print("id \(idnumber) は許可されていません。")
        }
        
        let SizeofSomething = (arc4random_uniform(300), 300)
        switch SizeofSomething {
        case let (width, height) where width == height:
            print("300ミリ四方の正方形です。")
            fallthrough
        case (let width, 300) where width < 300: //バリューバインディング
            print("幅 \(width) 高さ 300 で幅のほうが短いです。")
            fallthrough
        default:
            print("終了")
        }
        
        //文字列
        var text = "文字列はダブルクオーテーションで囲む\n"
        text = """
    複数行文字列は\n
    ダブルクオーテーション3つで囲む\n
    """ //閉じる"""の前にあるスペース,Tabの数だけも文字列中行頭のスペースが無視される
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        print("ontap")
    }
    
}

