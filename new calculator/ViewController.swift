//
//  ViewController.swift
//  new calculator
//
//  Created by czm on 16/6/27.
//  Copyright © 2016年 czm. All rights reserved.
//



import UIKit
class ViewController: UIViewController{
    
    @IBOutlet weak var Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var flag:Int=0;
    var num1:Double=0;
    var num2:Double=0;
    var Equal:Double=0;
    var judgepoint:Bool=false;
    
    
    @IBAction func one(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"1"
            
        }
        else
        {
            Text.text=(Text.text)!+"1";
        }
    }
    @IBAction func two(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"2"
            
        }
        else
        {
            Text.text=(Text.text)!+"2";
        }
    }
    @IBAction func three(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"3"
            
        }
        else
        {
            Text.text=(Text.text)!+"3";
        }
    }
    
    @IBAction func four(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"4"
            
        }
        else
        {
            Text.text=(Text.text)!+"4";
        }
    }
    @IBAction func five(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"5"
            
        }
        else
        {
            Text.text=(Text.text)!+"5";
        }
    }
    @IBAction func six(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"6"
            
        }
        else
        {
            Text.text=(Text.text)!+"6";
        }
    }
    @IBAction func seven(sender: AnyObject) {
        if( Text.text=="0")
        {
            Text.text=""
            Text.text=(Text.text)!+"7"
            
        }
        else
        {
            Text.text=(Text.text)!+"7";
        }
    }
    @IBAction func eight(sender: AnyObject) {        if( Text.text=="0")
    {
        Text.text=""
        Text.text=(Text.text)!+"8"
        
    }
    else
    {
        Text.text=(Text.text)!+"8";
        }
    }
    @IBAction func nine(sender: AnyObject) {        if( Text.text=="0")
    {
        Text.text=""
        Text.text=(Text.text)!+"9"
        
    }
    else
    {
        Text.text=(Text.text)!+"9";
        }
    }
    @IBAction func zero(sender: AnyObject) {        if( Text.text=="0")
    {
        Text.text=""
        Text.text=(Text.text)!+"0"
        
    }
    else
    {
        Text.text=(Text.text)!+"0";
        }
    }
    @IBAction func clean(sender: AnyObject) {Text.text="0";
        num1=0;
        num2=0;
        Equal=0;
        judgepoint=false

    }

    @IBAction func dengyu(sender: AnyObject) {var x:Int=0;
        num2=((Text.text)! as NSString).doubleValue;
        switch(flag)
        {
        case 1:
            
            Equal=num1+num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                Text.text="\(x)"
            }
            else
            {
                Text.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 2:
            
            Equal=num1-num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                Text.text="\(x)"
            }
            else
            {
                Text.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 3:
            
            Equal=num1*num2;
            if(Equal%1==0)
            {
                x=Int(Equal);
                Text.text="\(x)"
            }
            else
            {
                Text.text="\(Equal)"
            }
            judgepoint=true;
            break;
        case 4:
            if(num2==0)
            {
                Text.text="错误"
            }
            else
            {
                Equal=num1/num2;
                if(Equal%1==0)
                {
                    x=Int(Equal);
                    Text.text="\(x)"
                }
                else
                {
                    Text.text="\(Equal)"
                }
            }
            judgepoint=true;
            break;
        default:
            break;
        }
    }
      
    @IBAction func point(sender: AnyObject) {
        if(judgepoint==false)
        {
            Text.text=(Text.text)!+".";
            judgepoint=true
        }
    }
    @IBAction func add(sender: AnyObject) {
        num1=((Text.text)! as NSString).doubleValue;
        Text.text="";
        flag=1;
        judgepoint=false;

    }
    @IBAction func jian(sender: AnyObject) {
        num1=((Text.text)! as NSString).doubleValue;
        Text.text="";
        flag=2;
        judgepoint=false;
    }
    @IBAction func cheng(sender: AnyObject) {
        num1=((Text.text)! as NSString).doubleValue;
        Text.text="";
        flag=2;
        judgepoint=false;
        

    }
    @IBAction func chu(sender: AnyObject) {
        num1=((Text.text)! as NSString).doubleValue;
        Text.text="";
        flag=4;
        judgepoint=false;

    }
}