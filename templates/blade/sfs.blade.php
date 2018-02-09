<!DOCTYPE html>
<!--[if lte IE 8]><html class="ie8 no-js" lang="en-GB"><![endif]-->
<!--[if gt IE 9]><!--><html xmlns="http://www.w3.org/1999/xhtml" lang="en-GB" class="no-js"><!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>SFS Summary</title>
	<link rel="stylesheet" href="assets/css/sfs-form.css">
</head>

<!-- 
	If rendering to screen use class 'screen' 
	If rendering as PDF use class 'a4'
-->
<body class="a4">

	<div id="container">
		<div class="sfs-form">
			
			<!--  Page 1 -->
			<div class="sfs-page page">
					
				<div class="sfs-form__section sfs-form__section--underline">
					<div class="sfs-col sfs-col--half">
						<div class="sfs__row sfs__row--special-padding sfs__row no-border"></div>
						<div class="sfs__row sfs__row--special-padding">
							<p class="sfs__label">Name:</p>
							<p class="sfs__text sfs__output" id="client-name">{{ $sfs['client-name'] }}</p>
						</div>
						<div class="sfs__row">
							<p class="sfs__label">D.O.B.:</p>
							<p class="sfs__text sfs__output" id="client-date-of-birth">{{ date('d/m/Y', strtotime($sfs['client-date-of-birth'])) }}</p>
						</div>
						<!-- Add the class 'checked' to applicable option below -->
						<div class="sfs__row">
							<p class="sfs__label">Application:</p>
							<p class="sfs__checkbox{{ !$sfs['is-joint-application'] ? ' checked' : '' }}" id="is-joint-application__yes">Single</p>
							<p class="sfs__checkbox{{ $sfs['is-joint-application'] ? ' checked' : '' }}" id="is-joint-application__no">Joint</p>
						</div>
						<div class="sfs__row">
							<p class="sfs__label">Partner:</p>
							<p class="sfs__text">(if applicable):</p>
							<p class="sfs__text sfs__output" id="partner-name">{{ $sfs['partner-name'] or ''}}</p>
						</div>
						<div class="sfs__row">
							<p class="sfs__label">Partner D.O.B.:</p>
							<p class="sfs__text">(if applicable):</p>
							<p class="sfs__text sfs__output" id="partner-date-of-birth">
								@if($sfs['partner-date-of-birth'])
									{{ date('d/m/Y', strtotime($sfs['partner-date-of-birth'])) }}
								@endif								
							</p>
						</div>
						<div class="sfs__row sfs__row--address">
							<p class="sfs__label">Address:</p>
							<p class="sfs__text sfs__output" id="client-address">{{ $sfs['client-address'] }}</p>
						</div>
						<div class="sfs__row sfs__row--dependents">
							<p class="sfs__label">Dependent children:</p>
							<p class="sfs__text">Under 16:</p>
							<p class="sfs__text sfs__output" id="dependent-children-under-16">{{ $sfs['dependent-children-under-16'] or '0' }}</p>
							<p class="sfs__text">16-18:</p>
							<p class="sfs__text sfs__output" id="dependent-children-16-18">{{ $sfs['dependent-children-16-18'] or '0' }}</p>
						</div>
						<div class="sfs__row">
							<p class="sfs__label">Other dependants:</p>
							<p class="sfs__text sfs__output" id="other-dependents">{{ $sfs['other-dependents'] }}</p>
						</div>
						<div class="sfs__row">
							<p class="sfs__label">Number in household:</p>
							<p class="sfs__text sfs__output" id="total-number-in-household">{{ $sfs['total-number-in-household'] }}</p>
						</div>
						<div class="sfs__row">
							<p class="sfs__label">Number of vehicles in household:</p>
							<p class="sfs__text sfs__output" id="vehicles">{{ $sfs['vehicles'] or '0' }}</p>
						</div>
						<!-- Add the class 'checked' to all applicable options -->
						<div class="sfs__row">
							<p class="sfs__label">Housing tenure:</p>
							<p class="sfs__checkbox{{ $sfs['housing-tenure'] == 'Owner' ? ' checked' : '' }}" id="housing-tenure__owner">Owner</p>
							<p class="sfs__checkbox{{ $sfs['housing-tenure'] == 'Mortgage' ? ' checked' : '' }}" id="housing-tenure__mortgage">Mortgage</p>
							<p class="sfs__checkbox{{ $sfs['housing-tenure'] == 'Tenant - private sector' ? ' checked' : '' }}" id="housing-tenure__private-tenant">Tenant – private</p>
							<p class="sfs__checkbox{{ $sfs['housing-tenure'] == 'Tenant - social' ? ' checked' : '' }}" id="housing-tenure__social-tenant">Tenant – social</p>
							<p class="sfs__checkbox{{ $sfs['housing-tenure'] == 'Living with parents' ? ' checked' : '' }}" id="housing-tenure__living-with-parents">Living with parents</p>
							<p class="sfs__checkbox{{ $sfs['housing-tenure'] == 'Other' ? ' checked' : '' }}" id="housing-tenure__other">Other</p>
						</div>
					</div>
					<div class="sfs-col sfs-col--half">
						<div class="sfs__logo-wrap">
							<img class="sfs__logo" src="assets/images/sfs-logo.png" />
						</div>
						<div class="sfs__row">
							<p class="sfs__label">Contact/team name:</p>
							<p class="sfs__text sfs__output"></p>
						</div>
						<div class="sfs__row">
							<p class="sfs__label">Agency:</p>
							<p class="sfs__text sfs__output"></p>
						</div>
						<div class="sfs__row sfs__row--address">
							<p class="sfs__label">Agency address:</p>
							<p class="sfs__text sfs__output"></p>
						</div>
						<div class="sfs__row">
							<p class="sfs__label">Membership code number:</p>
							<p class="sfs__text sfs__output"></p>
						</div>
						<div class="sfs__row">
							<p class="sfs__label">Case reference number:</p>
							<p class="sfs__text sfs__output"></p>
						</div>
						<div class="sfs__row">
							<p class="sfs__label">Date of statement:</p>
							<p class="sfs__text sfs__output"></p>
						</div>
						<div class="sfs__row">
							<p class="sfs__label">Date of review:</p>
							<p class="sfs__text">(if applicable):</p>
							<p class="sfs__text sfs__output"></p>
						</div>

						<!-- Add the class 'checked to all applicable options' -->
						<div class="sfs__row">
							<p class="sfs__label">Employment:</p>
							<p class="sfs__checkbox{{ in_array('Employed full-time', $sfs['client-employment-status']) ? ' checked' : '' }}" id="client-employment-status__full-time">Full-time</p>
							<p class="sfs__checkbox{{ in_array('Employed part-time', $sfs['client-employment-status']) ? ' checked' : '' }}" id="client-employment-status__part-time">Part-time</p><br>
							<p class="sfs__checkbox{{ in_array('Unemployed', $sfs['client-employment-status']) ? ' checked' : '' }}" id="client-employment-status__unemployed">Unemployed</p>
							<p class="sfs__checkbox{{ in_array('Not working due to illness / disability', $sfs['client-employment-status']) ? ' checked' : '' }}" id="client-employment-status__not-working-due-to-illness">Not working due to illness / disability</p><br>
							<p class="sfs__checkbox{{ in_array('Self-employed', $sfs['client-employment-status']) ? ' checked' : '' }}" id="client-employment-status__self-employed">Self-employed</p>
							<p class="sfs__checkbox{{ in_array('Retired', $sfs['client-employment-status']) ? ' checked' : '' }}" id="client-employment-status__retired">Retired</p>
							<p class="sfs__checkbox{{ in_array('Carer', $sfs['client-employment-status']) ? ' checked' : '' }}" id="client-employment-status__Carer">Carer</p>
							<p class="sfs__checkbox{{ in_array('Student', $sfs['client-employment-status']) ? ' checked' : '' }}" id="client-employment-status__student">Student</p>
							<p class="sfs__checkbox{{ in_array('Other', $sfs['client-employment-status']) ? ' checked' : '' }}" id="client-employment-status__other">Other</p>
						</div>
						<!-- Add the class 'checked to all applicable options' -->
						<div class="sfs__row">
							<p class="sfs__label">Partner's employment:</p>
							<p class="sfs__checkbox{{ in_array('Employed full-time', $sfs['partner-employment-status']) ? ' checked' : '' }}" id="partner-employment-status__full-time">Full-time</p>
							<p class="sfs__checkbox{{ in_array('Employed part-time', $sfs['partner-employment-status']) ? ' checked' : '' }}" id="partner-employment-status__part-time">Part-time</p><br>
							<p class="sfs__checkbox{{ in_array('Unemployed', $sfs['partner-employment-status']) ? ' checked' : '' }}" id="partner-employment-status__unemployed">Unemployed</p>
							<p class="sfs__checkbox{{ in_array('Not working due to illness / disability', $sfs['partner-employment-status']) ? ' checked' : '' }}" id="partner-employment-status__not-working-due-to-illness">Not working due to illness / disability</p><br>
							<p class="sfs__checkbox{{ in_array('Self-employed', $sfs['partner-employment-status']) ? ' checked' : '' }}" id="partner-employment-status__self-employed">Self-employed</p>
							<p class="sfs__checkbox{{ in_array('Retired', $sfs['partner-employment-status']) ? ' checked' : '' }}" id="partner-employment-status__retired">Retired</p>
							<p class="sfs__checkbox{{ in_array('Carer', $sfs['partner-employment-status']) ? ' checked' : '' }}" id="partner-employment-status__Carer">Carer</p>
							<p class="sfs__checkbox{{ in_array('Student', $sfs['partner-employment-status']) ? ' checked' : '' }}" id="partner-employment-status__student">Student</p>
							<p class="sfs__checkbox{{ in_array('Other', $sfs['partner-employment-status']) ? ' checked' : '' }}" id="partner-employment-status__other">Other</p>
						</div>
					</div>
				</div>
				<div class="sfs-form__section">
					<div class="sfs-col sfs-col--half">
						<table class="sfs__table">
							<tr>
								<th class="sfs__label sfs__label--heading">Overview</th>
								<th class="sfs__label sfs__output">Amount (£)</th>
							</tr>
							<tr>
								<td class="sfs__label">Total income</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-income">
									&pound;{{ number_format($sfs['overview']['total-monthly-income'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__label">Total outgoings</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-outgoings">
									&pound;{{ number_format($sfs['overview']['total-monthly-outgoings'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Savings contribution</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="savings-contribution">
									&pound;{{ number_format($sfs['overview']['savings-contribution'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text no-border">Debt admin fee (if applicable):</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="debt-admin-fee">
									&pound;{{ number_format($sfs['overview']['debt-admin-fee'], 2) }}
								</td>
							</tr>
							<tr class="sfs__total first">
								<td class="sfs__label">Total available for priority creditors</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-available-for-priority-debts">
									&pound;{{ number_format($sfs['overview']['total-available-for-priority-debts'], 2) }}
								</td>
							</tr>
							<tr class="sfs__total last">
								<td class="sfs__label">Total available for non-priority creditors</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-available-for-non-priority-debts">
									&pound;{{ number_format($sfs['overview']['total-available-for-non-priority-debts'], 2) }}
								</td>
							</tr>
						</table>

						<table class="sfs__table">
							<tr>
								<th class="sfs__label sfs__label--heading">Monthly Income</th>
								<th class="sfs__label"></th>
							</tr>
							<tr>
								<td class="sfs__text">Earnings</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-earnings">
									&pound;{{ number_format($sfs['monthly-income']['total-earnings'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Benefits and tax credits</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-benefits">
									&pound;{{ number_format($sfs['monthly-income']['total-benefits'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Pensions</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-pensions">
									&pound;{{ number_format($sfs['monthly-income']['total-pensions'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text no-border">Other income</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-other-income">
									&pound;{{ number_format($sfs['monthly-income']['total-other-income'], 2) }}
								</td>
							</tr>
							<tr class="sfs__total">
								<td class="sfs__label">Total income</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-income">
									&pound;{{ number_format($sfs['monthly-income']['total-monthly-income'], 2) }}
								</td>
							</tr>
						</table>

						<table class="sfs__table">
							<tr>
								<th class="sfs__label sfs__label--heading">Monthly Outgoings: Fixed Costs</th>
								<th class="sfs__label"></th>
							</tr>
							<tr>
								<td class="sfs__text">Home and contents</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-home-contents">
									&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['total-home-contents'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Utilities</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-utilities">
									&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['total-utilities'], 2) }}
								</td>
							</tr>

							<tr>
								<td class="sfs__text">Rent</td>
							 	<td class="sfs__table-highlight sfs__output sfs__number_box" id="rent">
							 		&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['rent'], 2) }}
							 	</td>
							</tr>
							<tr>
								<td class="sfs__text">Mortgage</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="mortgage">
							 		&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['mortgage'], 2) }}	
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Other secured loans</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="secured-loans">
							 		&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['secured-loans'], 2) }}		
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Council tax / rates</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="council-tax-rates">
							 		&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['council-tax-rates'], 2) }}	
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Other home and contents</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="other-home-contents">
							 		&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['other-home-contents'], 2) }}					
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Gas</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="gas">
							 		&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['gas'], 2) }}								
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Electric</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="electricity">
							 		&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['electricity'], 2) }}	
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Other utility costs (e.g. coal, oil, calor gas)</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="other-utilities">
							 		&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['other-utilities'], 2) }}
								</td>
							</tr>

							<tr>
								<td class="sfs__text">Water</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-water">
									&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['total-water'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Care and health costs</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-care-health">
									&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['total-care-health'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Transport and travel</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-transport-travel">
									&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['total-transport-travel'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text">School costs</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-school">
									&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['total-school'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Pensions and insurances</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-pensions-insurances">
									&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['total-pensions-insurances'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Professional costs</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-professional">
									&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['total-professional'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text no-border">Other essential costs</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-other-essential">
									&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['total-other-essential'], 2) }}
								</td>
							</tr>
							<tr class="sfs__total">
								<td class="sfs__label">Total fixed costs</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-fixed-costs">
									&pound;{{ number_format($sfs['monthly-outgoings']['fixed-costs']['total-fixed-costs'], 2) }}
								</td>
							</tr>
						</table>
						
						<table class="sfs__table">
							<tr>
								<th class="sfs__label sfs__label--heading">Monthly Outgoings: Flexible Costs</th>
								<th class="sfs__label"></th>
							</tr>
							<tr>
								<td class="sfs__text">Communications and leisure</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-communications-leisure">
									&pound;{{ number_format($sfs['monthly-outgoings']['flexible-costs']['total-communications-leisure'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text">Food and housekeeping</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-food-housekeeping">
									&pound;{{ number_format($sfs['monthly-outgoings']['flexible-costs']['total-food-housekeeping'], 2) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text no-border">Personal costs</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-personal">
									&pound;{{ number_format($sfs['monthly-outgoings']['flexible-costs']['total-personal'], 2) }}
								</td>
							</tr>
							<tr class="sfs__total">
								<td class="sfs__label">Total flexible costs</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-flexible-costs">
									&pound;{{ number_format($sfs['monthly-outgoings']['flexible-costs']['total-flexible-costs'], 2) }}
								</td>
							</tr>
						</table>


						<table class="sfs__table sfs__table--spacing">
							<tr class="sfs__total">
								<td class="sfs__label">Total monthly outgoings (fixed and flexible)</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-outgoings">
									&pound;{{ number_format($sfs['monthly-outgoings']['total-monthly-outgoings'], 2) }}
								</td>
							</tr>
						</table>
						
					</div>
					<div class="sfs-col sfs-col--half">

						<table class="sfs__table">
								<tr class="sfs__label">
									<td class="small-text">Please confirm you have considered (or <br>
										discussed with an adviser) the use of any<br>
										assets to make lump sum payments
									</td>
									<td class="small-text">&nbsp;Tick to<br>confirm ✔<br>
										<!-- Add the class 'checked' to the field below -->
										<span class="sfs__whitebox{{ $sfs['confirmations']['asset-use-considered'] ? ' checked' : '' }}" id="asset-use-considered"></span>
									</td>
								</tr>
						</table>

						<table class="sfs__table">
							<div class="sfs__row">
								<tr class="sfs__label">
									<td class="small-text">Please confirm that a monthly contribution<br>
										to savings has been considered<br>
										(or discussed with an adviser)
									</td>
									<td class="small-text">&nbsp;Tick to<br>confirm ✔<br>
									<!-- Add the class 'checked' to the field below -->
										<span class="sfs__whitebox" id="savings-contribution-considered"></span>
										<span class="sfs__whitebox{{ $sfs['confirmations']['savings-contribution-considered'] ? ' checked' : '' }}" id="savings-contribution-considered"></span>
									</td>
								</tr>
							</div>
						</table>


						<div class="sfs__row extra-padding--top">
							<p class="sfs__label">Additional notes (e.g. reasons for debt, circumstances,<br>temporary situations)</p>
						</div>

						<?php
							// Define the available space
							$charsPerLine = 50;
							$availableLines = 35;
							$otherValueAnswers = array();
							$moreNotes = false;

							// Define an array of labels and answers for the 'other' values
							// Non of these are required so they may not exist
							if(array_key_exists('client-employment-status-other', $sfs))
							{
								$otherValueAnswers['Employment other'] = $sfs['client-employment-status-other'];
							}
							if(array_key_exists('partner-employment-status-other', $sfs))
							{
								$otherValueAnswers['Partner\'s employment other'] = $sfs['partner-employment-status-other'];
							}
							if(array_key_exists('housing-tenure-other', $sfs))
							{
								$otherValueAnswers['Housing tenure other'] = $sfs['housing-tenure-other'];
							}

							foreach ($otherValueAnswers as $key => $value)
							{
							   if($value !== '')
							   {
								   $otherValueOutput = $key . ': ' . $value;
								   $thisLines = ceil(strlen($otherValueOutput) / $charsPerLine);

									if($thisLines < $availableLines)
									{
										?>
										<div class="sfs__row sfs__output sfs__note">
											<p class="sfs__text">{{ $otherValueOutput }}</p>
										</div>
										<?php
									}

									$availableLines = $availableLines - $thisLines;
								}
							}

							// Do we have any notes
							if(isset($sfs['notes']))
							{
								$noteCounter = 0;
								$notesCount = count($sfs['notes']);

								for ($i = 0; $i < $notesCount; $i++)
								{
									$note = $sfs['notes'][$i];
									$thisLines = ceil(strlen($note) / $charsPerLine);

									if($thisLines < $availableLines)
									{
										?>
										<div class="sfs__row sfs__output sfs__note">
											<p class="sfs__text">{{ $note }}</p>
										</div>
										<?php
										$noteCounter++;
									}
									
									$availableLines = $availableLines - $thisLines;
								}
							}

							if($notesCount > $i)
							{
								$moreNotes = true;
							}
						?>

						<div class="sfs__text-block">
							<p class="sfs__text"></p>
						</div>
					</div>
				</div>
			</div>

			<!-- Page 2 -->
			<div class="sfs-page page">
				<div class="sfs-form__section">
					<div class="sfs-col sfs-col--full">
						<p class="sfs__label sfs__label--heading">Debts</p>
					</div>
					<div class="sfs-col sfs-col--full"></div>
					<div class="sfs-col sfs-col--half">
						<p class="sfs__label sfs__label--heading">Priority Debts</p>
						<table class="sfs__table sfs__table--priority">
							<tr>
								<th class="sfs__label">Creditor</th>
								<th class="sfs__label sfs__text--col-2">Owed (£)</th>
								<th class="sfs__label sfs__text--col-3">Offer</th>
							</tr>

							<?php
								$rowCount = 41;
								$loopStart = 0;
								$loopEnd = $loopStart + $rowCount;
								$priorityDebtCount = count($sfs['debts']['priority-debts']);
								$morePriorityDebt = false;

								for ($i = $loopStart; $i < $loopEnd; $i++)
								{
									if($i < $priorityDebtCount)
									{
										// Get the creditor name
										$creditor = $sfs['debts']['priority-debts'][$i]['creditor'];

										// If it is longer than 36 characters we need to truncate it
										if(strlen($creditor) > 36)
										{
											$creditor = substr($creditor, 0, 33) . "...";
										}
										?>
										<tr>
											<td class="sfs__text sfs__output">{{ $creditor }}</td>
											<td class="sfs__table-highlight sfs__output sfs__number_box">&pound;{{ number_format($sfs['debts']['priority-debts'][$i]['owed'], 2) }}</td>
											<td class="sfs__text sfs__text--col-3 sfs__output">&pound;{{ number_format($sfs['debts']['priority-debts'][$i]['offer'], 2) }}</td>
										</tr>
										<?php
									} 
									else
									{
										?>
										<tr>
											<td class="sfs__text"></td>
											<td class="sfs__table-highlight"></td>
											<td class="sfs__text sfs__text--col-3"></td>
										</tr>
										<?php
									}
								}

								// Do we still have any PDs to display
								if($priorityDebtCount > $loopEnd) 
								{
									$morePriorityDebt = true;
								}
							?>

							<tr>
								<td class="sfs__text--italic sfs__text--right sfs__text--right-pad" colspan="3">
								(tick if you have continued on next page) 

									{{-- Check is we have more PDs --}}
									@if($morePriorityDebt) 
										<span class="sfs__whitebox sfs__whitebox--inline checked"></span>
									@else
										<span class="sfs__whitebox sfs__whitebox--inline"></span>                                    
									@endif
								</td>
							</tr>
							<tr class="sfs__total">
								<td class="sfs__label sfs__text--right">Total priority debts</td>
								<td class="sfs__table-highlight sfs__output sfs__number_box">
									&pound;{{ number_format($sfs['debts']['total-priority-debts'], 2) }}
								</td>
							</tr>
						</table>
					</div>
					<div class="sfs-col sfs-col--half">
						<p class="sfs__label sfs__label--heading">Non-Priority Debts</p>
						<table class="sfs__table sfs__table--non-priority">
							<tr>
								<th class="sfs__label">Creditor</th>
								<th class="sfs__label sfs__text--col-2">Owed (£)</th>
								<th class="sfs__label sfs__text--col-3">CCJ</th>
								<th class="sfs__label sfs__text--col-4">Offer</th>
							</tr>

							<?php
								$rowCount = 41;
								$loopStart = 0;
								$loopEnd = $loopStart + $rowCount;
								$nonPriorityDebtCount = count($sfs['debts']['non-priority-debts']);
								$moreNonPriorityDebt = false;

								for ($i = $loopStart; $i < $loopEnd; $i++)
								{
									if($i < $nonPriorityDebtCount)
									{
										// Get the creditor name
										$creditor = $sfs['debts']['non-priority-debts'][$i]['creditor'];

										// If it is longer than 30 characters we need to truncate it
										if(strlen($creditor) > 30)
										{
											$creditor = substr($creditor, 0, 27) . "...";
										}
										?>
										<tr>
											<td class="sfs__text sfs__output">{{ $creditor }}</td>
											<td class="sfs__table-highlight sfs__output sfs__number_box">&pound;{{ number_format($sfs['debts']['non-priority-debts'][$i]['owed'], 2) }}</td>
											<td class="sfs__text sfs__text--col-3 sfs__output">
												@if($sfs['debts']['non-priority-debts'][$i]['ccj']) Y @else N @endif
											</td>
											<td class="sfs__text sfs__text--col-4 sfs__output">&pound;{{ number_format($sfs['debts']['non-priority-debts'][$i]['offer'],2 ) }}</td>
										</tr>
										<?php
									} 
									else
									{
										?>
										<tr>
											<td class="sfs__text"></td>
											<td class="sfs__table-highlight"></td>
											<td class="sfs__text sfs__text--col-3"></td>
											<td class="sfs__text sfs__text--col-4"></td>
										</tr>
										<?php
									}
								}

								// Do we have any more NPDs
								if($priorityDebtCount > $loopEnd)
								{
									$moreNonPriorityDebt = true;
								}
							?>
							<tr>
								<td class="sfs__text--italic sfs__text--right sfs__text--right-pad" colspan="4">
									(tick if you have continued on next page) 

									{{-- Check if we have more PDs --}}
									@if($moreNonPriorityDebt) 
										<span class="sfs__whitebox sfs__whitebox--inline checked"></span>
									@else
										<span class="sfs__whitebox sfs__whitebox--inline"></span>                                       
									@endif
								</td>
							</tr>
							<tr class="sfs__total">
								<td class="sfs__label sfs__text--right">Total non-priority debts</td>
								<td class="sfs__table-highlight">
									&pound;{{ number_format($sfs['debts']['total-non-priority-debts'],2 ) }}
								</td>
							</tr>
							<tr>
								<td class="sfs__text" colspan="3">Token Payments</td>
								<td class="sfs__table-highlight sfs__text--col-4">
									@if($sfs['debts']['token-payments'])
										&pound;{{ number_format($sfs['debts']['token-payments'],2 ) }}
									@endif
								</td>
							</tr>
						</table>
					</div>

					<div class="sfs-col sfs-col--full">
						<div class="sfs__signature-box">
							<p>This financial statement is an accurate record of the information provided.</p>
							<p class="sfs__label sfs__sign">Signed:</p>
							<p class="sfs__label sfs__date">Date:</p>
						</div>
					</div>

				</div>
			</div>


			@if($moreNonPriorityDebt || $morePriorityDebt)
				<!-- Page 3 -->
				<div class="sfs-page page">
					<div class="sfs-form__section sfs-form__section--summary">
						<div class="sfs-col sfs-col--half">
							<p class="heading--large">Summary version</p>
						</div>
						<div class="sfs-col sfs-col--half">
							<div class="sfs__logo-wrap">
								<img class="sfs__logo" src="assets/images/sfs-logo.png" />
							</div>
						</div>
						<div class="sfs-col sfs-col--full">
							<p class="sfs__label sfs__label--heading">Debts <span class="sfs__text sfs__text--italic">(continued)</span></p>
						</div>
						<div class="sfs-col sfs-col--full"></div>
						<div class="sfs-col sfs-col--half">
							<p class="sfs__label sfs__label--heading">Priority Debts</p>
							<table class="sfs__table sfs__table--priority">
								<tr>
									<th class="sfs__label">Creditor</th>
									<th class="sfs__label sfs__text--col-2">Owed (£)</th>
									<th class="sfs__label sfs__text--col-3">Offer</th>
								</tr>

								<?php
									$rowCount = 43;
									$loopStart = 41;
									$loopEnd = $loopStart + $rowCount;

									for ($i = $loopStart; $i < $loopEnd; $i++)
									{
										if($i < $priorityDebtCount)
										{
											// Get the creditor name
											$creditor = $sfs['debts']['priority-debts'][$i]['creditor'];

											// If it is longer than 36 characters we need to truncate it
											if(strlen($creditor) > 36)
											{
												$creditor = substr($creditor, 0, 33) . "...";
											}
											?>
											<tr>
												<td class="sfs__text sfs__output">{{ $creditor }}</td>
												<td class="sfs__table-highlight sfs__output sfs__number_box">&pound;{{ number_format($sfs['debts']['priority-debts'][$i]['owed'], 2) }}</td>
												<td class="sfs__text sfs__text--col-3 sfs__output">&pound;{{ number_format($sfs['debts']['priority-debts'][$i]['offer'], 2) }}</td>
											</tr>
											<?php
										} 
										else
										{
											?>
											<tr>
												<td class="sfs__text"></td>
												<td class="sfs__table-highlight"></td>
												<td class="sfs__text sfs__text--col-3"></td>
											</tr>
											<?php
										}
									}
								?>

								<tr class="sfs__total first">
									<td class="sfs__label sfs__text--right">Total priority debts</td>
									<td class="sfs__table-highlight">
										&pound;{{ number_format($sfs['debts']['total-priority-debts'], 2) }}
									</td>
									<td class="sfs__text--col-3"></td>
								</tr>
							</table>
						</div>
						<div class="sfs-col sfs-col--half">
							<p class="sfs__label sfs__label--heading">Non-Priority Debts</p>
							<table class="sfs__table sfs__table--non-priority">
								<tr>
									<th class="sfs__label">Creditor</th>
									<th class="sfs__label sfs__text--col-2">Owed (£)</th>
									<th class="sfs__label sfs__text--col-3">CCJ</th>
									<th class="sfs__label sfs__text--col-4">Offer</th>
								</tr>

								<?php
									$rowCount = 43;
									$loopStart = 41;
									$loopEnd = $loopStart + $rowCount;

									for ($i = $loopStart; $i < $loopEnd; $i++)
									{
										if($i < $nonPriorityDebtCount)
										{
											$creditor = $sfs['debts']['non-priority-debts'][$i]['creditor'];
											if(strlen($creditor) > 30)
											{
												$creditor = substr($creditor, 0, 27) . "...";
											}
											?>
											<tr>
												<td class="sfs__text sfs__output">{{ $creditor }}</td>
												<td class="sfs__table-highlight sfs__output sfs__number_box">&pound;{{ number_format($sfs['debts']['non-priority-debts'][$i]['owed'], 2) }}</td>
												<td class="sfs__text sfs__text--col-3 sfs__output">
													@if($sfs['debts']['non-priority-debts'][$i]['ccj']) Y @else N @endif
												</td>
												<td class="sfs__text sfs__text--col-4 sfs__output">&pound;{{ number_format($sfs['debts']['non-priority-debts'][$i]['offer'],2 ) }}</td>
											</tr>
											<?php
										} 
										else
										{
											?>
											<tr>
												<td class="sfs__text"></td>
												<td class="sfs__table-highlight"></td>
												<td class="sfs__text sfs__text--col-3"></td>
												<td class="sfs__text sfs__text--col-4"></td>
											</tr>
											<?php
										}
									}
								?>

								<tr class="sfs__total first">
									<td class="sfs__label sfs__text--right">Total non-priority debts</td>
									<td class="sfs__table-highlight">
										&pound;{{ number_format($sfs['debts']['total-non-priority-debts'],2 ) }}
									</td>
									<td class="sfs__text--col-3"></td>
									<td class="sfs__text--col-4"></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			@endif

			@if($moreNotes)
				<!-- Page 4 -->
				<div class="sfs-page page">
					<div class="sfs-form__section">
						<div class="sfs-col sfs-col--full">
							<div class="sfs__row sfs__row--special-padding-2">
								<p class="sfs__label">Additional notes (e.g. reasons for debt, circumstances, temporary situations)</p>
							</div>

							<?php
								if(isset($sfs['notes']))
								{       
									$charsPerLine = 105;
									$availableLines = 43;

									for ($i = $noteCounter; $i < $notesCount; $i++)
									{
										$note = $sfs['notes'][$i];
										$thisLines = ceil(strlen($note) / $charsPerLine);

										if($thisLines < $availableLines)
										{
											?>
											<div class="sfs__row sfs__output sfs__note">
												<p class="sfs__text">{{ $note }}</p>
											</div>
											<?php
										}
										$availableLines = $availableLines - $thisLines;
									}
								}
							?>

							<div class="sfs__text-block sfs__text-block--full-page">
								<p class="sfs__text"></p>
							</div>

							<div class="sfs__signature-box">
								<p>This financial statement is an accurate record of the information provided.</p>
								<p class="sfs__label sfs__sign">Signed:</p>
								<p class="sfs__label sfs__date">Date:</p>
							</div>
						</div>
					</div>
				</div>
			@endif

		</div>
	</div>
</body>
</html>
