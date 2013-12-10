#!/bin/bash

# Check input parameters
if [ -z "$1" ]
then
        echo "Please enter the sender's e-mail address, followed by [ENTER]:"
        read sndr
else
        sndr=$1
fi

if [ -z "$2" ]
then
        echo "Please enter the recepients e-mail address, followed by [ENTER]:"
        read rcpt
else
        rcpt=$2
fi

if [ -z "$3" ]
then
        echo "Please enter the e-mail subject, followed by [ENTER]:"
        read subj
else
        subj=$3
fi

if ! [ -z "$4" ]
then
        subj="$subj $4"
fi

if ! [ -z "$5" ]
then
        subj="$subj $5"
fi


echo -e "Windows Registry Editor Version 5.00\r\n
\r\n
[HKEY_CURRENT_USER\Software\Brain2\Brain² Google Authenticator]\r\n
\"andy\"=\"secret\"" > /tmp/temp.reg
iconv -f UTF-8 -t MS-ANSI /tmp/temp.reg > /tmp/user.reg
rm /tmp/temp.reg
enc_file=`uuencode -m /tmp/user.reg user.reg`

# create mail message
echo "Composing and sending mail ..."

email="$rcpt"
message='<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <title></title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <style type="text/css">
    a {text-decoration: none}
  </style>
</head>
<body text="#000000" link="#000000" alink="#000000" vlink="#000000">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr><td width="50%">&nbsp;</td><td align="center">

<a name="JR_PAGE_ANCHOR_0_1"></a>
<table class="jrPage" cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 600px; border-collapse: collapse; background-color: white;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:26px"></td>
<td style="width:14px"></td>
<td style="width:30px"></td>
<td style="width:40px"></td>
<td style="width:10px"></td>
<td style="width:80px"></td>
<td style="width:60px"></td>
<td style="width:10px"></td>
<td style="width:80px"></td>
<td style="width:40px"></td>
<td style="width:10px"></td>
<td style="width:20px"></td>
<td style="width:9px"></td>
<td style="width:1px"></td>
<td style="width:10px"></td>
<td style="width:39px"></td>
<td style="width:21px"></td>
<td style="width:10px"></td>
<td style="width:64px"></td>
<td style="width:1px"></td>
<td style="width:5px"></td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="22">
</td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="4">
</td>
<td colspan="11" style="text-indent: 0px; text-align: left;">
</td>
<td colspan="7">
</td>
</tr>
<tr valign="top" style="height:44px">
<td colspan="2">
</td>
<td colspan="12">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:44px"></td>
<td style="width:359px"></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Attest. de conformité à la commande suivant EN 10204 § 2.1 + <br/>Certificat de réception suivant EN 10204 § 3.1</span></td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:100px"></td>
<td style="width:303px"></td>
</tr>
<tr valign="top" style="height:14px">
<td colspan="2">
</td>
</tr>
<tr valign="top" style="height:30px">
<td style="pointer-events: auto; background-color: #FFFFFF; ">
<div style='\''width:100px;height:30px;background-color: #FFFFFF; overflow:hidden;'\''>                                                                                                           
<P>sdfsdfsdfdsf</P><br><br><h3>Abschliessende Stellungnahme</h3><p>sdfsdfsd5555555555555555555555555555555555555555555
                                                                                                                                    
                                                                                                                                    
555                                                                                                                                 
5                                                                                                                                   
5                                                                                                                                   
5                                                                                                                                   
5                                                                                                                                   
</p>                                                                                                                          
</div></td>
<td>
</td>
</tr>
</table>
</div>
</div>
</td>
<td colspan="8">
</td>
</tr>
<tr valign="top" style="height:28px">
<td colspan="22">
</td>
</tr>
<tr valign="top" style="height:2px">
<td colspan="12">
</td>
<td colspan="4" rowspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Page :</span></td>
<td colspan="2" rowspan="2" style="text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">1</span></td>
<td rowspan="2" style="text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">/</span></td>
<td colspan="3" rowspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">4</span></td>
</tr>
<tr valign="top" style="height:16px">
<td colspan="7">
</td>
<td colspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Rapport No. :</span></td>
<td colspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">LA-1234</span></td>
<td>
</td>
</tr>
<tr valign="top" style="height:205px">
<td>
</td>
<td colspan="20">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:554px"></td>
<td style="width:21px"></td>
</tr>
<tr valign="top" style="height:205px">
<td style="pointer-events: auto; ">
</td>
<td>
</td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:200px"></td>
<td style="width:355px"></td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="3">
</td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">Type/Section</span></td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">EXECW NP 1X400 RM/70 52 KV</span></td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">N° d'\''article</span></td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">E04901</span></td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">Client</span></td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">INFRABEL SA</span></td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">Référence client</span></td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">4500440048 MR. SEBASTIEN GERARD</span></td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">N° de la commande</span></td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">1210033017</span></td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">N° de la fabrication</span></td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">1212687</span></td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">N° du touret</span></td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">722W5115</span></td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td rowspan="2" style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">Nous certifions que les câbles sont conformes à la norme</span></td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">NBN HD 620 TYPE 10B-A 2010 ANGEPASST + TF 2796</span></td>
</tr>
<tr valign="top" style="height:5px">
<td>
</td>
<td>
</td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="3">
</td>
</tr>
</table>
</div>
</div>
</td>
<td>
</td>
</tr>
<tr valign="top" style="height:70px">
<td>
</td>
<td colspan="19">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:554px"></td>
<td style="width:20px"></td>
</tr>
<tr valign="top" style="height:70px">
<td style="pointer-events: auto; ">
</td>
<td>
</td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:240px"></td>
<td style="width:90px"></td>
<td style="width:60px"></td>
<td style="width:70px"></td>
<td style="width:70px"></td>
<td style="width:24px"></td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="7">
</td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="6">
</td>
<td rowspan="2" style="pointer-events: auto; text-indent: 0px; ">
<div style="position: relative; overflow: hidden; width:24px;height:50px;">
<span class="rotated" data-rotation="right" style="position: absolute; display: table; width:50px;height:24px;text-align: left;-webkit-transform: translate(-13px,13px) rotate(90deg); -moz-transform: translate(-13px,13px) rotate(90deg); -ms-transform: translate(-13px,13px) rotate(90deg); -o-transform: translate(-13px,13px) rotate(90deg); filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1); "><span style="display: table-cell; vertical-align:top;"><span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125; font-weight: bold;">* same batch</span></span></span></div></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">**** Test ****</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">Ergebnisdarstellung</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">unité</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">Prescription</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">valeur mesurée</span></td>
</tr>
</table>
</div>
</div>
</td>
<td colspan="2">
</td>
</tr>
<tr valign="top" style="height:322px">
<td>
</td>
<td colspan="19">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:555px"></td>
<td style="width:19px"></td>
</tr>
<tr valign="top" style="height:322px">
<td style="pointer-events: auto; ">
</td>
<td>
</td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:260px"></td>
<td style="width:70px"></td>
<td style="width:60px"></td>
<td style="width:70px"></td>
<td style="width:70px"></td>
<td style="width:4px"></td>
<td style="width:20px"></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Contrôle visuel</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: left;">
</td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">/</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">OK</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">OK</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
</td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Epaisseur du semi-conducteur intérieur</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">min;max</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">mm</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">&gt;= 0.5</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">0.6</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
</td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Epaisseur de l'\''isolation</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">min;max</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">mm</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">&gt;= 8.90</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">9.83</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
</td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Epaisseur de l'\''isolation moyenne</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: left;">
</td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">mm</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">&gt;= 10.0</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">10.2</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
</td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Excentricité de l'\''isolation</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">max</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">1</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">&gt;= 0.900</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">0.94</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
</td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Epaisseur du semi-conducteur extérieur</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">min;max</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">mm</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">&gt;= 0.6 ; &lt;= 1.2</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">0.9;0.9</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
</td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Ovalité sur semi-conducteur extérieur</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: left;">
</td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">mm</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">&lt;= 1.0</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">0.8</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
</td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Epaisseur de la gaine extérieure</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">min</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">mm</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">&gt;= 2.96</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">4.05</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
</td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Epaisseur de la gaine extérieure moyenne</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: left;">
</td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">mm</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">&gt;= 3.6</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">4.2</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
</td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Bruchdehnung Isolation</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">med.</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">%</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: left;">
</td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: left;">
</td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">*</span></td>
</tr>
<tr valign="top" style="height:22px">
<td colspan="8">
</td>
</tr>
</table>
</div>
</div>
</td>
<td colspan="2">
</td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="22">
</td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td colspan="4" rowspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Eupen, 08.04.2013</span></td>
<td colspan="17">
</td>
</tr>
<tr valign="top" style="height:10px">
<td>
</td>
<td colspan="9">
</td>
<td colspan="3" rowspan="3">
<img src="QS-ReportMain.html_files/img_0_0_98" style="width: 50px" alt=""/></td>
<td colspan="5">
</td>
</tr>
<tr valign="top" style="height:30px">
<td colspan="3">
</td>
<td colspan="3" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Etabli par</span></td>
<td colspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">NOLS M.</span></td>
<td colspan="2">
</td>
<td colspan="3" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Approuvé par</span></td>
<td>
</td>
<td colspan="5">
</td>
</tr>
<tr valign="top" style="height:10px">
<td colspan="14">
</td>
<td colspan="5">
</td>
</tr>
<tr valign="top" style="height:25px">
<td colspan="22">
</td>
</tr>
</table>
<br/>
<br/>

<a name="JR_PAGE_ANCHOR_0_2"></a>
<table class="jrPage" cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 600px; border-collapse: collapse; background-color: white;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:26px"></td>
<td style="width:14px"></td>
<td style="width:30px"></td>
<td style="width:40px"></td>
<td style="width:10px"></td>
<td style="width:80px"></td>
<td style="width:60px"></td>
<td style="width:10px"></td>
<td style="width:80px"></td>
<td style="width:40px"></td>
<td style="width:10px"></td>
<td style="width:20px"></td>
<td style="width:9px"></td>
<td style="width:1px"></td>
<td style="width:10px"></td>
<td style="width:39px"></td>
<td style="width:21px"></td>
<td style="width:10px"></td>
<td style="width:64px"></td>
<td style="width:6px"></td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="21">
</td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="4">
</td>
<td colspan="11" style="text-indent: 0px; text-align: left;">
</td>
<td colspan="6">
</td>
</tr>
<tr valign="top" style="height:44px">
<td colspan="2">
</td>
<td colspan="12">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:44px"></td>
<td style="width:359px"></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Attest. de conformité à la commande suivant EN 10204 § 2.1 + <br/>Certificat de réception suivant EN 10204 § 3.1</span></td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:100px"></td>
<td style="width:303px"></td>
</tr>
<tr valign="top" style="height:14px">
<td colspan="2">
</td>
</tr>
<tr valign="top" style="height:30px">
<td style="pointer-events: auto; background-color: #FFFFFF; ">
<div style='\''width:100px;height:30px;background-color: #FFFFFF; overflow:hidden;'\''>                                                                                                           
<P>sdfsdfsdfdsf</P><br><br><h3>Abschliessende Stellungnahme</h3><p>sdfsdfsd5555555555555555555555555555555555555555555
                                                                                                                                    
                                                                                                                                    
555                                                                                                                                 
5                                                                                                                                   
5                                                                                                                                   
5                                                                                                                                   
5                                                                                                                                   
</p>                                                                                                                          
</div></td>
<td>
</td>
</tr>
</table>
</div>
</div>
</td>
<td colspan="7">
</td>
</tr>
<tr valign="top" style="height:28px">
<td colspan="21">
</td>
</tr>
<tr valign="top" style="height:2px">
<td colspan="12">
</td>
<td colspan="4" rowspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Page :</span></td>
<td colspan="2" rowspan="2" style="text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">2</span></td>
<td rowspan="2" style="text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">/</span></td>
<td colspan="2" rowspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">4</span></td>
</tr>
<tr valign="top" style="height:16px">
<td colspan="7">
</td>
<td colspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Rapport No. :</span></td>
<td colspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">LA-1234</span></td>
<td>
</td>
</tr>
<tr valign="top" style="height:70px">
<td>
</td>
<td colspan="19">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:554px"></td>
<td style="width:20px"></td>
</tr>
<tr valign="top" style="height:70px">
<td style="pointer-events: auto; ">
</td>
<td>
</td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:240px"></td>
<td style="width:90px"></td>
<td style="width:60px"></td>
<td style="width:70px"></td>
<td style="width:70px"></td>
<td style="width:24px"></td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="7">
</td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="6">
</td>
<td rowspan="2" style="pointer-events: auto; text-indent: 0px; ">
<div style="position: relative; overflow: hidden; width:24px;height:50px;">
<span class="rotated" data-rotation="right" style="position: absolute; display: table; width:50px;height:24px;text-align: left;-webkit-transform: translate(-13px,13px) rotate(90deg); -moz-transform: translate(-13px,13px) rotate(90deg); -ms-transform: translate(-13px,13px) rotate(90deg); -o-transform: translate(-13px,13px) rotate(90deg); filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1); "><span style="display: table-cell; vertical-align:top;"><span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125; font-weight: bold;">* same batch</span></span></span></div></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">**** Test ****</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">Ergebnisdarstellung</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">unité</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">Prescription</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">valeur mesurée</span></td>
</tr>
</table>
</div>
</div>
</td>
<td>
</td>
</tr>
<tr valign="top" style="height:507px">
<td>
</td>
<td colspan="19">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:555px"></td>
<td style="width:19px"></td>
</tr>
<tr valign="top" style="height:507px">
<td style="pointer-events: auto; ">
</td>
<td>
</td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:260px"></td>
<td style="width:70px"></td>
<td style="width:60px"></td>
<td style="width:70px"></td>
<td style="width:70px"></td>
<td style="width:4px"></td>
<td style="width:20px"></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Zugfestigkeit Isolation</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">med.</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">MPa</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: left;">
</td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: left;">
</td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">*</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 0</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 1</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 2</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 3</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 4</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 5</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 6</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 7</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 8</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 9</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 10</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 11</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 12</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 13</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 14</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:27px">
<td colspan="8">
</td>
</tr>
</table>
</div>
</div>
</td>
<td>
</td>
</tr>
<tr valign="top" style="height:40px">
<td colspan="21">
</td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td colspan="4" rowspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Eupen, 08.04.2013</span></td>
<td colspan="16">
</td>
</tr>
<tr valign="top" style="height:10px">
<td>
</td>
<td colspan="9">
</td>
<td colspan="3" rowspan="3">
<img src="QS-ReportMain.html_files/img_0_0_98" style="width: 50px" alt=""/></td>
<td colspan="4">
</td>
</tr>
<tr valign="top" style="height:30px">
<td colspan="3">
</td>
<td colspan="3" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Etabli par</span></td>
<td colspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">NOLS M.</span></td>
<td colspan="2">
</td>
<td colspan="3" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Approuvé par</span></td>
<td>
</td>
<td colspan="4">
</td>
</tr>
<tr valign="top" style="height:10px">
<td colspan="14">
</td>
<td colspan="4">
</td>
</tr>
<tr valign="top" style="height:25px">
<td colspan="21">
</td>
</tr>
</table>
<br/>
<br/>

<a name="JR_PAGE_ANCHOR_0_3"></a>
<table class="jrPage" cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 600px; border-collapse: collapse; background-color: white;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:26px"></td>
<td style="width:14px"></td>
<td style="width:30px"></td>
<td style="width:40px"></td>
<td style="width:10px"></td>
<td style="width:80px"></td>
<td style="width:60px"></td>
<td style="width:10px"></td>
<td style="width:80px"></td>
<td style="width:40px"></td>
<td style="width:10px"></td>
<td style="width:20px"></td>
<td style="width:9px"></td>
<td style="width:1px"></td>
<td style="width:10px"></td>
<td style="width:39px"></td>
<td style="width:21px"></td>
<td style="width:10px"></td>
<td style="width:64px"></td>
<td style="width:6px"></td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="21">
</td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="4">
</td>
<td colspan="11" style="text-indent: 0px; text-align: left;">
</td>
<td colspan="6">
</td>
</tr>
<tr valign="top" style="height:44px">
<td colspan="2">
</td>
<td colspan="12">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:44px"></td>
<td style="width:359px"></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Attest. de conformité à la commande suivant EN 10204 § 2.1 + <br/>Certificat de réception suivant EN 10204 § 3.1</span></td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:100px"></td>
<td style="width:303px"></td>
</tr>
<tr valign="top" style="height:14px">
<td colspan="2">
</td>
</tr>
<tr valign="top" style="height:30px">
<td style="pointer-events: auto; background-color: #FFFFFF; ">
<div style='\''width:100px;height:30px;background-color: #FFFFFF; overflow:hidden;'\''>                                                                                                           
<P>sdfsdfsdfdsf</P><br><br><h3>Abschliessende Stellungnahme</h3><p>sdfsdfsd5555555555555555555555555555555555555555555
                                                                                                                                    
                                                                                                                                    
555                                                                                                                                 
5                                                                                                                                   
5                                                                                                                                   
5                                                                                                                                   
5                                                                                                                                   
</p>                                                                                                                          
</div></td>
<td>
</td>
</tr>
</table>
</div>
</div>
</td>
<td colspan="7">
</td>
</tr>
<tr valign="top" style="height:28px">
<td colspan="21">
</td>
</tr>
<tr valign="top" style="height:2px">
<td colspan="12">
</td>
<td colspan="4" rowspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Page :</span></td>
<td colspan="2" rowspan="2" style="text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">3</span></td>
<td rowspan="2" style="text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">/</span></td>
<td colspan="2" rowspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">4</span></td>
</tr>
<tr valign="top" style="height:16px">
<td colspan="7">
</td>
<td colspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Rapport No. :</span></td>
<td colspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">LA-1234</span></td>
<td>
</td>
</tr>
<tr valign="top" style="height:70px">
<td>
</td>
<td colspan="19">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:554px"></td>
<td style="width:20px"></td>
</tr>
<tr valign="top" style="height:70px">
<td style="pointer-events: auto; ">
</td>
<td>
</td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:240px"></td>
<td style="width:90px"></td>
<td style="width:60px"></td>
<td style="width:70px"></td>
<td style="width:70px"></td>
<td style="width:24px"></td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="7">
</td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="6">
</td>
<td rowspan="2" style="pointer-events: auto; text-indent: 0px; ">
<div style="position: relative; overflow: hidden; width:24px;height:50px;">
<span class="rotated" data-rotation="right" style="position: absolute; display: table; width:50px;height:24px;text-align: left;-webkit-transform: translate(-13px,13px) rotate(90deg); -moz-transform: translate(-13px,13px) rotate(90deg); -ms-transform: translate(-13px,13px) rotate(90deg); -o-transform: translate(-13px,13px) rotate(90deg); filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1); "><span style="display: table-cell; vertical-align:top;"><span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125; font-weight: bold;">* same batch</span></span></span></div></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">**** Test ****</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">Ergebnisdarstellung</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">unité</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">Prescription</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">valeur mesurée</span></td>
</tr>
</table>
</div>
</div>
</td>
<td>
</td>
</tr>
<tr valign="top" style="height:450px">
<td>
</td>
<td colspan="19">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:555px"></td>
<td style="width:19px"></td>
</tr>
<tr valign="top" style="height:450px">
<td style="pointer-events: auto; ">
</td>
<td>
</td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:260px"></td>
<td style="width:70px"></td>
<td style="width:60px"></td>
<td style="width:70px"></td>
<td style="width:70px"></td>
<td style="width:4px"></td>
<td style="width:20px"></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 15</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 16</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 17</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 18</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 19</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 20</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 21</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 22</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 23</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 24</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 25</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 26</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 27</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 28</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test Linie 29</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">Test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125;">test</span></td>
</tr>
</table>
</div>
</div>
</td>
<td>
</td>
</tr>
<tr valign="top" style="height:97px">
<td colspan="21">
</td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td colspan="4" rowspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Eupen, 08.04.2013</span></td>
<td colspan="16">
</td>
</tr>
<tr valign="top" style="height:10px">
<td>
</td>
<td colspan="9">
</td>
<td colspan="3" rowspan="3">
<img src="QS-ReportMain.html_files/img_0_0_98" style="width: 50px" alt=""/></td>
<td colspan="4">
</td>
</tr>
<tr valign="top" style="height:30px">
<td colspan="3">
</td>
<td colspan="3" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Etabli par</span></td>
<td colspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">NOLS M.</span></td>
<td colspan="2">
</td>
<td colspan="3" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Approuvé par</span></td>
<td>
</td>
<td colspan="4">
</td>
</tr>
<tr valign="top" style="height:10px">
<td colspan="14">
</td>
<td colspan="4">
</td>
</tr>
<tr valign="top" style="height:25px">
<td colspan="21">
</td>
</tr>
</table>
<br/>
<br/>

<a name="JR_PAGE_ANCHOR_0_4"></a>
<table class="jrPage" cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 600px; border-collapse: collapse; background-color: white;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:1px"></td>
<td style="width:25px"></td>
<td style="width:14px"></td>
<td style="width:30px"></td>
<td style="width:40px"></td>
<td style="width:10px"></td>
<td style="width:80px"></td>
<td style="width:60px"></td>
<td style="width:10px"></td>
<td style="width:80px"></td>
<td style="width:40px"></td>
<td style="width:10px"></td>
<td style="width:20px"></td>
<td style="width:9px"></td>
<td style="width:1px"></td>
<td style="width:10px"></td>
<td style="width:39px"></td>
<td style="width:21px"></td>
<td style="width:10px"></td>
<td style="width:45px"></td>
<td style="width:19px"></td>
<td style="width:6px"></td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="23">
</td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="5">
</td>
<td colspan="11" style="text-indent: 0px; text-align: left;">
</td>
<td colspan="7">
</td>
</tr>
<tr valign="top" style="height:44px">
<td colspan="3">
</td>
<td colspan="12">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:44px"></td>
<td style="width:359px"></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Attest. de conformité à la commande suivant EN 10204 § 2.1 + <br/>Certificat de réception suivant EN 10204 § 3.1</span></td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:100px"></td>
<td style="width:303px"></td>
</tr>
<tr valign="top" style="height:14px">
<td colspan="2">
</td>
</tr>
<tr valign="top" style="height:30px">
<td style="pointer-events: auto; background-color: #FFFFFF; ">
<div style='\''width:100px;height:30px;background-color: #FFFFFF; overflow:hidden;'\''>                                                                                                           
<P>sdfsdfsdfdsf</P><br><br><h3>Abschliessende Stellungnahme</h3><p>sdfsdfsd5555555555555555555555555555555555555555555
                                                                                                                                    
                                                                                                                                    
555                                                                                                                                 
5                                                                                                                                   
5                                                                                                                                   
5                                                                                                                                   
5                                                                                                                                   
</p>                                                                                                                          
</div></td>
<td>
</td>
</tr>
</table>
</div>
</div>
</td>
<td colspan="8">
</td>
</tr>
<tr valign="top" style="height:28px">
<td colspan="23">
</td>
</tr>
<tr valign="top" style="height:2px">
<td colspan="13">
</td>
<td colspan="4" rowspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Page :</span></td>
<td colspan="2" rowspan="2" style="text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">4</span></td>
<td rowspan="2" style="text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">/</span></td>
<td colspan="3" rowspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">4</span></td>
</tr>
<tr valign="top" style="height:16px">
<td colspan="8">
</td>
<td colspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Rapport No. :</span></td>
<td colspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">LA-1234</span></td>
<td>
</td>
</tr>
<tr valign="top" style="height:70px">
<td>
</td>
<td colspan="21">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:554px"></td>
<td style="width:20px"></td>
</tr>
<tr valign="top" style="height:70px">
<td style="pointer-events: auto; ">
</td>
<td>
</td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:240px"></td>
<td style="width:90px"></td>
<td style="width:60px"></td>
<td style="width:70px"></td>
<td style="width:70px"></td>
<td style="width:24px"></td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="7">
</td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="6">
</td>
<td rowspan="2" style="pointer-events: auto; text-indent: 0px; ">
<div style="position: relative; overflow: hidden; width:24px;height:50px;">
<span class="rotated" data-rotation="right" style="position: absolute; display: table; width:50px;height:24px;text-align: left;-webkit-transform: translate(-13px,13px) rotate(90deg); -moz-transform: translate(-13px,13px) rotate(90deg); -ms-transform: translate(-13px,13px) rotate(90deg); -o-transform: translate(-13px,13px) rotate(90deg); filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1); "><span style="display: table-cell; vertical-align:top;"><span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 8px; line-height: 1.2578125; font-weight: bold;">* same batch</span></span></span></div></td>
</tr>
<tr valign="top" style="height:30px">
<td>
</td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-left: 1px solid #000000; border-bottom: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">**** Test ****</span></td>
<td style="pointer-events: auto; border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000; text-indent: 0px; text-align: right;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">Ergebnisdarstellung</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">unité</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">Prescription</span></td>
<td style="pointer-events: auto; border: 1px solid #000000; text-indent: 0px; text-align: center;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125; font-weight: bold;">valeur mesurée</span></td>
</tr>
</table>
</div>
</div>
</td>
<td>
</td>
</tr>
<tr valign="top" style="height:93px">
<td colspan="2">
</td>
<td colspan="19">
<div style="width: 100%; height: 100%; position: relative;">
<div style="position: absolute; overflow: hidden; width: 100%; height: 100%; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:554px"></td>
</tr>
<tr valign="top" style="height:93px">
<td style="pointer-events: auto; ">
</td>
</tr>
</table>
</div>
<div style="position: relative; width: 100%; height: 100%; pointer-events: none; ">
<table cellpadding="0" cellspacing="0" border="0" style="empty-cells: show; width: 100%; border-collapse: collapse;">
<tr valign="top" style="height:0">
<td style="width:20px"></td>
<td style="width:40px"></td>
<td style="width:70px"></td>
<td style="width:10px"></td>
<td style="width:140px"></td>
<td style="width:90px"></td>
<td style="width:70px"></td>
<td style="width:20px"></td>
<td style="width:50px"></td>
<td style="width:44px"></td>
</tr>
<tr valign="top" style="height:20px">
<td colspan="10">
</td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td colspan="2" rowspan="2" style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Eupen, 08.04.2013</span></td>
<td colspan="7">
</td>
</tr>
<tr valign="top" style="height:10px">
<td>
</td>
<td colspan="5">
</td>
<td rowspan="3" style="pointer-events: auto; ">
<img src="QS-ReportMain.html_files/img_0_3_20" style="width: 50px" alt=""/></td>
<td>
</td>
</tr>
<tr valign="top" style="height:30px">
<td colspan="2">
</td>
<td colspan="2" style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Etabli par</span></td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">NOLS M.</span></td>
<td>
</td>
<td style="pointer-events: auto; text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Approuvé par</span></td>
<td>
</td>
<td>
</td>
</tr>
<tr valign="top" style="height:10px">
<td colspan="8">
</td>
<td>
</td>
</tr>
<tr valign="top" style="height:3px">
<td colspan="10">
</td>
</tr>
</table>
</div>
</div>
</td>
<td colspan="2">
</td>
</tr>
<tr valign="top" style="height:454px">
<td colspan="23">
</td>
</tr>
<tr valign="top" style="height:20px">
<td>
</td>
<td colspan="5" rowspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Eupen, 08.04.2013</span></td>
<td colspan="17">
</td>
</tr>
<tr valign="top" style="height:10px">
<td>
</td>
<td colspan="9">
</td>
<td colspan="3" rowspan="3">
<img src="QS-ReportMain.html_files/img_0_0_98" style="width: 50px" alt=""/></td>
<td colspan="5">
</td>
</tr>
<tr valign="top" style="height:30px">
<td colspan="4">
</td>
<td colspan="3" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Etabli par</span></td>
<td colspan="2" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">NOLS M.</span></td>
<td colspan="2">
</td>
<td colspan="3" style="text-indent: 0px; text-align: left;">
<span style="font-family: '\''DejaVu Sans'\'', Arial, Helvetica, sans-serif; color: #000000; font-size: 10px; line-height: 1.2578125;">Approuvé par</span></td>
<td>
</td>
<td colspan="5">
</td>
</tr>
<tr valign="top" style="height:10px">
<td colspan="15">
</td>
<td colspan="5">
</td>
</tr>
<tr valign="top" style="height:25px">
<td colspan="23">
</td>
</tr>
</table>

<![if IE]>
<script>
ar links = document.querySelectorAll('\''link.jrWebFont'\'');
setTimeout(function(){ if (links) { for (var i = 0; i < links.length; i++) { links.item(i).href = links.item(i).href; } } }, 0);
</script>
<![endif]>
</td><td width="50%">&nbsp;</td></tr>
</table>
</body>
</html>'


# send mail message

(
echo "From: no-reply@montova.com";
echo "To: $email";
#echo "Bcc: helpdesk@montova.com";
echo "Reply-To: $sndr";
echo "Subject: $subj";
echo "MIME-Version: 1.0";
echo "Content-Type: multipart/mixed; boundary=boundary";
echo "This message contains multiple parts in MIME format.";
echo "--boundary";
echo "Content-Type:text/html";
echo "$message";
echo "--boundary";
echo "Content-Type: application/octet-stream";
echo "Content-Transfer-Encoding: base64";
echo "Content-Disposition: attachment; filename=user.reg";
echo "$enc_file";
echo "--boundary--";
) | sendmail -t

echo "mail succesfully sent to $email"
echo "All done!"
