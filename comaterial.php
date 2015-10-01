<?php

/* ====================
[BEGIN_COT_THEME]
Name=Priori
Schemes=default:Default
[END_COT_THEME]
==================== */

/**
* Theme for Cotonti Adminarea
*
* @package Cotonti
* @version 1.2
* @author esclkm
* @copyright (c) esclkm 2012
* @license BSD
*/

defined('COT_CODE') or die('Wrong URL');

global $cfg;

function compile_botstrap_less_adm ($theme, $input, $output='', $compress =false)
{
	global $cfg;
	$output = empty($output) ? $input : $output;
	$output = $cfg['themes_dir'].'/admin/'.$theme.'/css/'.$output.'.css';
	$input = $cfg['themes_dir'].'/admin/'.$theme.'/less/'.$input.'.less';
	if (file_exists($output) && file_exists($input))
	{
		$filetimecss = filemtime($output);
		$filetimeless = filemtime($input);
	//	cot_print('css', cot_date('datetime_full', $filetimecss), 'less', cot_date('datetime_full', $filetimeless), cot_date('datetime_full'), $filetimecss > $filetimeless);
		if($filetimecss > $filetimeless)
		{
			return false;
		}
		else
		{
			unlink($output);
		//	cot_print("deleted");
		}
	}

	$options = array('relativeUrls' => false);
	if($compress)
	{
		$options['compress'] = true;
	}
	
	$parser = new Less_Parser($options);
	$parser->SetImportDirs(array($cfg['themes_dir'].'/admin/'.$theme.'/less' => $cfg['themes_dir'].'/admin/'.$theme.'/less',
		$cfg['plugins_dir']."/bootstrap/bootstrap/less" => $cfg['plugins_dir']."/bootstrap/bootstrap/less"));
	
	$parser->parseFile($input);
	$css = $parser->getCss();
	
	if(!file_exists ($cfg['themes_dir'].'/admin/'.$theme.'/css'))
	{
		mkdir($cfg['themes_dir'].'/admin/'.$theme.'/css');
	}
	
	file_put_contents($output, $css);
	return true;
}
compile_botstrap_less_adm($cfg['admintheme'], $cfg['admintheme'].'', $cfg['admintheme'].'');
cot_rc_add_file($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/css/'.$cfg['admintheme'].'.css');
cot_rc_add_file($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/css/font-awesome.css');
cot_rc_link_footer($cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/js/comaterial.js');

$R['input_checkbox'] = '<input type="hidden" name="{$name}" value="{$value_off}" /><label><input type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} /> {$title}</label>';
$R['input_check'] = '<label><input type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} /> {$title}</label>';
$R['input_default'] = '<input type="{$type}"  class="form-control" name="{$name}" value="{$value}"{$attrs} />{$error}';
$R['input_password'] = '<input type="password" class="form-control"  name="{$name}" value="{$value}"{$attrs} />{$error}';
$R['input_option'] = '<option value="{$value}"{$selected}>{$title}</option>';
$R['input_radio'] = '<label><input type="radio" name="{$name}" value="{$value}"{$checked}{$attrs} /> {$title}</label>';
$R['input_radio_separator'] = ' ';
$R['input_select'] = '<select name="{$name}" class="form-control" {$attrs}>{$options}</select>{$error}';
$R['input_submit'] = '<button type="submit" name="{$name}" {$attrs}>{$value}</button>';
$R['input_text'] = '<input type="text" name="{$name}" value="{$value}" class="form-control" {$attrs} />{$error}';
$R['input_textarea'] = '<textarea name="{$name}" rows="{$rows}" cols="{$cols}" class="form-control"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_editor'] =  '<textarea class="editor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_medieditor'] =  '<textarea class="medieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_minieditor'] =  '<textarea class="minieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_filebox'] = '<a href="{$filepath}">{$value}</a><br /><input type="file" name="{$name}" {$attrs} /><br /><label><input type="checkbox" name="{$delname}" value="1" />'.$L['Delete'].'</label>{$error}';
$R['input_filebox_empty'] = '<input type="file" name="{$name}" class="form-control" {$attrs} />{$error}';

$R['input_date'] =  '<span class="dateinput">{$day} {$month} {$year} {$hour}: {$minute}</span>';
$R['input_date_short'] =  '<span class="dateinput">{$day} {$month} {$year}</span>';

$R['link_pagenav_current'] = '<li class="active"><a href="{$url}"{$event}{$rel}>{$num}</a><li>';
$R['link_pagenav_first'] = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_first'].'</a><li>';

$R['link_pagenav_gap'] = '<li class="disabled"><span>...</span></li>';
$R['link_pagenav_last'] = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_last'].'</a></li>';
$R['link_pagenav_main'] = '<li><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_next'] = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_next'].'</a></li>';
$R['link_pagenav_prev'] = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_prev'].'</a></li>';

$R['breadcrumbs_container'] = '<ol class="breadcrumb">{$crumbs}</ol>';
$R['breadcrumbs_link'] = '<li><a href="{$url}">{$title}</a></li>';
$R['breadcrumbs_plain'] = '<li>{$title}</li>';
$R['breadcrumbs_separator'] = '';
$R['breadcrumbs_first'] = '<li><a href="'.cot_url('admin').'" class="hidden-sm hidden-xs">'.$L['Adminpanel'].'</a></li>';

function page_delete_url($id)
{
	global $sys;
	$delete_url = cot_url('page', "m=edit&a=update&delete=1&id={$id}&x={$sys['xk']}");
	return cot_confirm_url($delete_url, 'page', 'page_confirm_delete');
}

$L['breadcrumbmaintitle'] = "Главная";
$L['SEO'] = "SEO";
$cfg['homebreadcrumb'] = true;


if(!function_exists('get_readmemd'))
{
	function get_readmemd($extension, $is_module = false)
	{
		global $cfg;

		if(!class_exists('Parsedown'))
		{
			require_once $cfg['themes_dir'].'/admin/'.$cfg['admintheme'].'/inc/Parsedown.php';
		}


		$path = $is_module ? $cfg['modules_dir'] : $cfg['plugins_dir'];
		$path .= '/'.$extension.'/readme.md';
		if(!file_exists($path))
		{
			return false;
		}

		$Parsedown = new Parsedown();

		$text = file_get_contents($path);
		$text = $Parsedown->text($text);
		$text = str_ireplace(array('<h4','</h4>'),array('<h6','</h6>'),$text);
		$text = str_ireplace(array('<h3','</h3>'),array('<h5','</h5>'),$text);
		$text = str_ireplace(array('<h2','</h2>'),array('<h4','</h4>'),$text);
		$text = str_ireplace(array('<h1','</h1>'),array('<h3','</h3>'),$text);
		return $text;
	}
}

/* Extra Fields */
$L['ExtraFields'] = 'Extra Fields';
$L['ShowAllTables'] = 'Show all database tables';
$L['ShowRelatedTables'] = 'Only show tables configured for Extra Fields';
$L['TableName'] = 'Table name';
$L['BelongsTo'] = 'Belongs to';
$L['ExtfTitle'] = 'Title';
$L['ExtfTitleInfo'] = 'Describing field label, can be used with _TITLE tag.';
$L['ExtfCode'] = 'Code';
$L['ExtfCodeInfo'] = 'The database column name, should be lowercase and alphanumeric.';
$L['ExtfDefault'] = 'Default value';
$L['ExtfType'] = 'Type';
$L['ExtfTypeText'] = 'Text';
$L['ExtfTypeString'] = 'String (max 255 chars)';
$L['ExtfTypeTextarea'] = 'Textarea';
$L['ExtfTypeNumber'] = 'Number';
$L['ExtfTypeInteger'] = 'Integer (no decimals)';
$L['ExtfTypeDouble'] = 'Number (with decimals)';
$L['ExtfTypeCurrency'] = 'Currency (2 decimals)';
$L['ExtfTypeRange'] = 'Range';
$L['ExtfTypeSelection'] = 'Selection';
$L['ExtfTypeSelect'] = 'Dropdown select';
$L['ExtfTypeCheckbox'] = 'Checkbox (yes/no)';
$L['ExtfTypeChecklistbox'] = 'Multiple checkboxes';
$L['ExtfTypeRadio'] = 'Radio buttons';
$L['ExtfTypeCountry'] = 'Country list dropdown';
$L['ExtfTypeOther'] = 'Other';
$L['ExtfTypeDatetime'] = 'Date/time input';
$L['ExtfTypeFile'] = 'File upload';
$L['ExtfCustomization'] = 'Customization';
$L['ExtfParser'] = 'Parser';
$L['ExtfOptions'] = 'Options';
$L['ExtfParameters'] = 'Parameters';
$L['ExtfHTML'] = 'HTML template for form field';
$L['ExtfHTMLInfo'] = array(
	'input' => 'Available parameters: {$name} {$value} {$attrs} {$error}',
	'textarea' => 'Available parameters: {$name} {$value} {$rows} {$cols} {$attrs} {$error}',
	'inputint' => 'Available parameters: {$name} {$value} {$attrs} {$error}',
	'double' => 'Available parameters: {$name} {$value} {$attrs} {$error}',
	'currency' => 'Available parameters: {$name} {$value} {$attrs} {$error}',
	'range' => 'Available parameters: {$name} {$options} {$attrs} {$error}',
	'select' => 'Available parameters: {$name} {$options} {$attrs} {$error}',
	'checkbox' => 'Available parameters: {$name} {$value} {$checked} {$title} {$attrs}',
	'checklistbox' => 'Available parameters: {$name} {$value} {$checked} {$title} {$attrs}',
	'radio' => 'Available parameters: {$name} {$value} {$checked} {$title} {$attrs}',
	'country' => 'Available parameters: {$name} {$options} {$attrs} {$error}',
	'datetime' => 'Available parameters: {$day} {$month} {$year} {$hour} {$minute}',
	'file' => 'Available parameters: {$name} {$value} {$filepath} {$attrs} {$error} {$delname}',
);
$L['ExtfRegexMatch'] = 'Regular expression check';
$L['ExtfRegexMatchInfo'] = 'Provide a pattern for <a href="http://php.net/manual/en/function.preg-match.php">preg_match</a>.';
$L['ExtfNewOption'] = 'New option';
$L['ExtfRange'] = 'Range';
$L['ExtfMin'] = 'Min. value';
$L['ExtfMax'] = 'Max. value';
$L['ExtfMinYear'] = 'From year';
$L['ExtfMaxYear'] = 'To year';
$L['ExtfFormat'] = 'Format for <a href="http://php.net/manual/en/function.date.php">date</a>';
$L['ExtfRangeIntInfo'] = 'Provide two integers.';
$L['ExtfRangeFloatInfo'] = 'Provide two decimal numbers.';
$L['ExtfSeparator'] = 'Separator';
