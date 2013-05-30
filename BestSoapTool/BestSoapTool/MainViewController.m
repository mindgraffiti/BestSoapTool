//
//  MainViewController.m
//  BestSoapTool
//
//  Created by Serdar YILLAR on 12/28/12.
//  Copyright (c) 2012 yillars. All rights reserved.
//

#import "MainViewController.h"
#import "SYSoapTool.h"

@interface MainViewController (){
    SYSoapTool *soapTool;
}

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //Alloc Init SYSoapTool
    soapTool = [[SYSoapTool alloc]init];
    soapTool.delegate = self;

    
    //Create Buttons
    UIButton *withoutParameter = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [withoutParameter setFrame:CGRectMake(30, 150, 260, 50)];
    [withoutParameter setTitle:@"Call Soap Tool With Params" forState:UIControlStateNormal];
    [withoutParameter addTarget:self action:@selector(with) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:withoutParameter];
    
    UIButton *withParameter = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [withParameter setFrame:CGRectMake(30, 220, 260, 50)];
    [withParameter setTitle:@"Call Soap Tool Without Params" forState:UIControlStateNormal];
    [withParameter addTarget:self action:@selector(without) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:withParameter];
    
    
}
-(void)with{
    
    //***----------------------------------------------------------------***//
    //   WSDL = http://serdaryillar.com/servis.asmx?op=GetContainer
    //***---------------------------------------------------------------***//

    //***----------------------------------------------------------------***//
    //   REQUEST XML - START
    //***---------------------------------------------------------------***//
    /*
        POST /servis.asmx HTTP/1.1
        Host: serdaryillar.com
        Content-Type: text/xml; charset=utf-8
        Content-Length: length
        SOAPAction: "http://tempuri.org/GetContainer"
     
        <?xml version="1.0" encoding="utf-8"?>
        <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
            <soap:Body>
                <GetContainer xmlns="http://tempuri.org/">
                    <oid>string</oid>
                </GetContainer>
            </soap:Body>
     </soap:Envelope>
     
     */
    //***----------------------------------------------------------------***//
    //   REQUEST XML - END
    //***---------------------------------------------------------------***//
    
    
    
    //***----------------------------------------------------------------***//
    //   REQUEST RETRIVE XML - START
    //***---------------------------------------------------------------***//
    /*
        HTTP/1.1 200 OK
        Content-Type: text/xml; charset=utf-8
        Content-Length: length
    
        <?xml version="1.0" encoding="utf-8"?>
        <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
        <soap:Body>
                <GetContainerResponse xmlns="http://tempuri.org/">
                    <GetContainerResult>
                        <id>string</id>
                        <style>string</style>
                        <type>string</type>
                        <description>string</description>
                        <weight>double</weight>
                        <date_in>dateTime</date_in>
                        <date_out>dateTime</date_out>
                        <in>string</in>
                        <in_campaign>string</in_campaign>
                        <out>string</out>
                        <out_campaign>string</out_campaign>
                        <ship_port>string</ship_port>
                        <empty_port>string</empty_port>
                        <location>string</location>
                    </GetContainerResult>
                </GetContainerResponse>
            </soap:Body>
        </soap:Envelope>
    */
    //***----------------------------------------------------------------***//
    //   REQUEST RETRIVE XML - END
    //***---------------------------------------------------------------***//
    
    
    //***----------------------------------------------------------------***//
    //   SOAP CALL - START
    //***---------------------------------------------------------------***//
    
    NSMutableArray *tags = [[NSMutableArray alloc]initWithObjects:@"oid", nil];
    NSMutableArray *vars = [[NSMutableArray alloc]initWithObjects:@"12", nil];
    
    [soapTool callSoapServiceWithParameters___soapAction:@"http://tempuri.org" __functionName:@"GetContainer" tags:tags vars:vars wsdlURL:@"http://serdaryillar.com/servis.asmx"];
    
    //***----------------------------------------------------------------***//
    //   SOAP CALL - END
    //***---------------------------------------------------------------***//
    
}
-(void)without{
    
    //***----------------------------------------------------------------***//
    //   WSDL = http://serdaryillar.com/servis.asmx?op=GetImportTariffPort
    //***---------------------------------------------------------------***//
    
    //***----------------------------------------------------------------***//
    //   REQUEST XML - START
    //***---------------------------------------------------------------***//
    /*
            POST /servis.asmx HTTP/1.1
            Host: serdaryillar.com
            Content-Type: text/xml; charset=utf-8
            Content-Length: length
            SOAPAction: "http://tempuri.org/GetImportTariffPort"
    
            <?xml version="1.0" encoding="utf-8"?>
            <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
                <soap:Body>
                    <GetImportTariffPort xmlns="http://tempuri.org/" />
                </soap:Body>
            </soap:Envelope>
    */
    //***----------------------------------------------------------------***//
    //   REQUEST XML - END
    //***---------------------------------------------------------------***//
    
    
    
    //***----------------------------------------------------------------***//
    //   REQUEST RETRIVE XML - START
    //***---------------------------------------------------------------***//    
    /*
            HTTP/1.1 200 OK
            Content-Type: text/xml; charset=utf-8
            Content-Length: length
    
            <?xml version="1.0" encoding="utf-8"?>
            <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
                <soap:Body>
                    <GetImportTariffPortResponse xmlns="http://tempuri.org/">
                        <GetImportTariffPortResult>
                            <Tariff>
                                <name>string</name>
                                <t_1>string</t_1>
                            </Tariff>
                            <Tariff>
                                <name>string</name>
                                <t_1>string</t_1>
                            </Tariff>
                        </GetImportTariffPortResult>
                    </GetImportTariffPortResponse>
                </soap:Body>
            </soap:Envelope>
    
    */
    //***----------------------------------------------------------------***//
    //   REQUEST RETRIVE XML - END
    //***---------------------------------------------------------------***//
    
    
    
    
    //***----------------------------------------------------------------***//
    //   SOAP CALL - START
    //***---------------------------------------------------------------***//
    
    [soapTool callSoapServiceWithoutParameters___soapAction:@"http://tempuri.org" __functionName:@"GetImportTariffPort" wsdlURL:@"http://serdaryillar.com/servis.asmx"];
    
    //***----------------------------------------------------------------***//
    //   SOAP CALL - END
    //***---------------------------------------------------------------***//
    
    
}

-(void)retrieveFromSYSoapTool:(NSMutableArray *)_data{
    NSLog(@"%@",_data);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
