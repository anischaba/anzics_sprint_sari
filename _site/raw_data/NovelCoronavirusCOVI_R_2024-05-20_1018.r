#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('NovelCoronavirusCOVI_DATA_2024-05-20_1018.csv')
#Setting Labels

label(data$subjid)="Participant Identification Number (PIN):"
label(data$redcap_event_name)="Event Name"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$redcap_data_access_group)="Data Access Group"
label(data$corona_ieorres)="1.1 Suspected or proven acute novel coronavirus (nCoV) infection:     "
label(data$noncovid___1)="1.1.1 If No,  select the laboratory-confirmed respiratory pathogen primarily responsible for the ICU admission  (choice=Influenza A virus)"
label(data$noncovid___2)="1.1.1 If No,  select the laboratory-confirmed respiratory pathogen primarily responsible for the ICU admission  (choice=Influenza B virus)"
label(data$noncovid___3)="1.1.1 If No,  select the laboratory-confirmed respiratory pathogen primarily responsible for the ICU admission  (choice=Respiratory syncytial virus (RSV))"
label(data$noncovid___4)="1.1.1 If No,  select the laboratory-confirmed respiratory pathogen primarily responsible for the ICU admission  (choice=Parainfluenza virus)"
label(data$noncovid___9)="1.1.1 If No,  select the laboratory-confirmed respiratory pathogen primarily responsible for the ICU admission  (choice=Other)"
label(data$if_other_please_specify)="1.1.2 If Other confirmed respiratory pathogen, please specify "
label(data$noncovid_spec_treat_2)="1.2 Did the patient receive any specific treatment for non-COVID-19 SARI in hospital or ICU?"
label(data$noncovid_complic_2)="1.3 Was the patient admitted to ICU for any other non-COVID-19-SARI related illness or complication?"
label(data$noncovid_resp_failure_2)="1.4 Did the patient present to ICU with non-COVID-19-SARI related respiratory failure?"
label(data$noncovid_incidental_2)="1.5 Was this considered an incidental case of non-COVID-19-SARI?"
label(data$incidental_diagnosis_2)="1.5.1 If Yes to incidental case of non-COVID-19 SARI, please select the most proximate cause related to the ICU admission:"
label(data$for_non_covid_19_sari_case)="1.6 Did the patient recently receive a seasonal influenza vaccine? "
label(data$corona_ieorres_2)="1.2 If Yes, For Suspected or proven acute novel coronavirus (nCoV) infection, choose from the following:"
label(data$proven_spec_treat)="1.3 Did the patient receive any specific treatment for COVID-19 in hospital or ICU?"
label(data$proven_resp_failure)="1.4 Did the patient present to ICU with COVID-19 related respiratory failure?"
label(data$proven_complic)="1.5 Was the patient admitted to ICU for any other COVID-19 related illness or complication?"
label(data$proven_incidental)="1.6 Was this considered an incidental case of COVID-19?"
label(data$incidental_diagnosis)="1.6.1 If Yes to incidental case of COVID-19, please select the most proximate cause related to the ICU admission:"
label(data$symptoms_epi_travel)="2. History of travel to an area with documented cases of novel coronavirus infection. If YES,  complete 2.1 - Country"
label(data$symptoms_epi_physical)="2. Close contact* with a confirmed or probable case of nCoV infection, while that patient was symptomatic"
label(data$symptoms_epi_healthfac)="4. Presence in a healthcare facility where nCoV infections have been managed"
label(data$symptoms_epi_lab)="5. Presence in a laboratory handling suspected or confirmed nCoV samples"
label(data$supper_trcntry)="2.1 If YES, state location: Country"
label(data$supper_trcity)="2.2 If YES, state location: City/Geographic Area:"
label(data$erendat_2)="2.3 If YES, return date:"
label(data$covid_vac)="2.1 Has the patient received a COVID-19 vaccine? "
label(data$vac_doses)="2.1.1 If yes, how many doses"
label(data$vac_type)="2.1.2 Vaccination type "
label(data$other_vac)="2.1.3 If Other vaccine received, please specify type"
label(data$time_since_vac_dose)="2.1.4 If yes, time from the most recent dose"
label(data$inclusion_criteria_complete)="Complete?"
label(data$ethnic___1)="3.1 Ethnic group  (choice=Arab)"
label(data$ethnic___2)="3.1 Ethnic group  (choice=Black)"
label(data$ethnic___3)="3.1 Ethnic group  (choice=East Asian)"
label(data$ethnic___4)="3.1 Ethnic group  (choice=South Asian)"
label(data$ethnic___5)="3.1 Ethnic group  (choice=West Asian)"
label(data$ethnic___6)="3.1 Ethnic group  (choice=Latin American)"
label(data$ethnic___7)="3.1 Ethnic group  (choice=Caucasian)"
label(data$ethnic___8)="3.1 Ethnic group  (choice=Aboriginal/First Nations)"
label(data$ethnic___9)="3.1 Ethnic group  (choice=Other)"
label(data$ethnic___10)="3.1 Ethnic group  (choice=Unknown)"
label(data$healthwork_empl)="1.2 Employed as a healthcare worker or any of following professions?   Nurse, Doctor, Allied Health , Working in Microbiology Lab, Other healthcare worker, Childcare worker, Aged care worker, Disability worker"
label(data$other_ethnic)="If Other: Specify"
label(data$healthwork_erterm)="1.2 Employed as a healthcare worker or any of following professions?"
label(data$other_healthcare)="1.2a If Other, Specify:"
label(data$age_estimateyears)="3.2 Age/Estimated age"
label(data$group_residential)="Is the patient living in a group residential setting?"
label(data$age_estimateyearsu)="3.2.1 Age/Estimated age Unit"
label(data$height_obesity_2)="3.3 Estimated height"
label(data$weight_obesity_3)="3.4 Estimated weight"
label(data$bmi_calc)="Body Mass Index (BMI):"
label(data$other_groupresidential)="If Other, Specify:"
label(data$egestage_rptestcd)="If YES: Gestational weeks assessment:"
label(data$sex)="3.5 Sex at birth:"
label(data$postpart_rptestcd)="1.6 Post partum"
label(data$pregyn_rptestcd)="3.6 Pregnant?"
label(data$pregout_rptestcd)="1.6.1 Pregnancy outcome"
label(data$dlvrdtc_rptestcd)="1.6.2 Delivery date"
label(data$aplb_lbperf)="1.6.3 Baby tested for mothers ARI infection"
label(data$aplb_lborres)=" If YES, testing outcome"
label(data$aplb_lbmethod)="1.6.4 Method"
label(data$aplb_lbmethodoth)="If OTHER method; Specify"
label(data$apdm_age)="1.7 INFANT - Less than 1 year old?"
label(data$apvs_weight)="1.7.1 Birth weight"
label(data$apvs_weightu)="Birth weight unit"
label(data$apsc_gestout)="1.7.2 Gestational outcome"
label(data$apsc_brfedind)="1.7.3 Breastfed"
label(data$apsc_brfedindy)="If  YES"
label(data$apsc_brdisdat)="Discontinued breastfeeding at "
label(data$apsc_dvageind)="1.7.4 Appropriate development for age?"
label(data$apsc_vcageind)="1.7.5 Vaccinations appropriate for age/country?"
label(data$cestdat)="Onset date of first/earliest symptom (if available)"
label(data$hostdat)="4.1 Admission date and time at this hospital"
label(data$hostdat_icu_admit)="Was the patient admitted into ICU?"
label(data$hostdat_icu)="4.2 Admission date and time at ICU"
label(data$previousicu)="In this hospital admission, was the patient previously in ICU?"
label(data$previousicu_2)="If yes, was the patient in ICU due to COVID-19?"
label(data$previousicu_3)="If yes, what was the patients participant ID? write Not applicable if patient wasnt enrolled before"
label(data$hooccur)="4.3 Transfer from another facility? (ICU transfers only)"
label(data$siteid_transfer)="4.3.1 If Yes, name of transfer facility (ICU transfers only)"
label(data$hostdat_transfer)="If YES: Admission date at transfer facility "
label(data$subjidcat_transfer)="4.3.2 If Yes - facility is a study site, participant ID # at transfer facility"
label(data$subjid_transfer)="4.3.3 If Different, please specify participant ID"
label(data$misc_pims_paed)="4.4 MIS-C or PIMS-TS at admission (Paediatric patients only)"
label(data$orig_adm_covid)="Was patient originally admitted to first hospital for COVID related illness"
label(data$fever_ceoccur_v2)="3.01 History of fever"
label(data$cough_ceoccur_v2)="3.02 Cough"
label(data$coughsput_ceoccur_v2)="3.02.1 Cough: with sputum production"
label(data$coughhb_ceoccur_v2)="3.02.2 Cough: bloody sputum / haemoptysis"
label(data$sorethroat_ceoccur_v2)="3.03 Sore throat"
label(data$runnynose_ceoccur_v2)="3.04 Runny nose (Rhinorrhoea)"
label(data$earpain_ceoccur_v2)="3.05 Ear pain"
label(data$wheeze_ceoccur_v2)="3.06 Wheezing"
label(data$chestpain_ceoccur_v2)="3.07 Chest pain"
label(data$myalgia_ceoccur_v2)="3.08 Muscle aches (Myalgia)"
label(data$jointpain_ceoccur_v2)="3.09 Joint pain (Arthralgia)"
label(data$fatigue_ceoccur_v2)="3.10 Fatigue / Malaise"
label(data$shortbreath_ceoccur_v2)="3.11 Shortness of breath (Dyspnea)"
label(data$lowerchest_ceoccur_v2)="3.12 Lower chest wall indrawing"
label(data$headache_ceoccur_v2)="3.13 Headache"
label(data$confusion_ceoccur_v2)="3.14 Altered consciousness / confusion"
label(data$seizures_cecoccur_v2)="3.15 Seizures"
label(data$abdopain_ceoccur_v2)="3.16 Abdominal pain"
label(data$vomit_ceoccur_v2)="3.17 Vomiting / Nausea"
label(data$diarrhoea_ceoccur_v2)="3.18 Diarrhoea"
label(data$conjunct_ceoccur_v2)="3.19 Conjunctivitis"
label(data$rash_ceoccur_v2)="3.20 Skin rash"
label(data$skinulcers_ceoccur_v2)="3.21 Skin ulcers"
label(data$lymp_ceoccur_v2)="3.22 Lymphadenopathy"
label(data$bleed_ceoccur_v2)="3.23 Bleeding (Haemorrhage)"
label(data$bleed_ceterm_v2)="3.24 If Bleeding (others)"
label(data$lost_ceterm_v2)="3.25 Loss of smell/taste"
label(data$rigor_ceoccur_v2)="3.26 Rigor or sweating"
label(data$paeds_misc)="3.27 MIS-C or PIMS-TS (paeds only)"
label(data$bleed_cetermy_v2)="If Yes, specify site(s)"
label(data$other_signs)="If others not on the list, please specify"
label(data$label_signs_symp)="Admission Signs and Symptoms (worst available data within 24 hours of  hospital admission)"
label(data$temp_vsorres)="Temperature (worst highest)"
label(data$temp_vsorresu)="Temperature Units"
label(data$hr_vsorres)="Heart Rate (highest)"
label(data$rr_vsorres)="Respiratory Rate (highest pre-intubation)"
label(data$sysbp_vsorres)="Systolic blood pressure (lowest in first 24 hours)"
label(data$admission_diabp_vsorres)="Diastolic blood pressure (from the same time point as lowest SBP)"
label(data$dehydration_vsorres)="Severe dehydration:   (In clinicians opinion)"
label(data$stercap_vsyn)="Capillary refill time  on admission available?"
label(data$stercap_vsorres)="Capillary refill time >2 seconds ?"
label(data$oxy_vsorresu)="Oxygen saturation on:"
label(data$oxy_vsorres)="Oxygen saturation (pre-intubation)"
label(data$chroniccard_mhyn)="4.5. Chronic cardiac disease, including congenital heart disease (not hypertension)"
label(data$aceinhibitor_myhn)="4.6 Past use of ACE inhibitor or A2 Blocker"
label(data$obesity_mhyn)="4.7. Obesity (as defined by clinical staff)"
label(data$chronicpul_mhyn)="4.8. Chronic pulmonary disease (not asthma)"
label(data$diabetiscomp_mhyn)="4.9. Diabetes with complications"
label(data$diabetes_mhyn)="4.10. Diabetes without complications"
label(data$asthma_mhyn)="4.11. Asthma (physician diagnosed)"
label(data$renal_mhyn)="4.12. Chronic kidney disease"
label(data$rheumatology_mhyr)="4.13. Rheumatologic disorder"
label(data$mildliv_mhyn)="4.14. Mild Liver disease"
label(data$modliver_mhyn)="4.15. Moderate or severe liver disease"
label(data$dementia_mhyn)="4.16. Dementia"
label(data$malnutrition_mhyn)="4.17. Malnutrition"
label(data$chronicneu_mhyn)="4.18. Chronic neurological disorder"
label(data$malignantneo_mhyn)="4.19. Malignant neoplasm"
label(data$other_mhyn)="4.20. Smoker"
label(data$chronhaemo_mhyn)="4.21. Chronic hematologic disease"
label(data$aidshiv_mhyn)="4.22. AIDS/HIV"
label(data$chrimm_mhyn)="4.23. Chronic Immunosuppression"
label(data$organ_transpl)="4.23.1. Organ transplant recipient"
label(data$bmi_obesity)="Is BMI available? If yes, please state:"
label(data$smoking_mhyn)="4.21 Other relevant risk factors"
label(data$smok_curr)="4.20 Currently smoking?"
label(data$smok_comm)="4.20.1 What is the most common method of smoking?"
label(data$smok_packday)="4.20.2 On average how many packs a day do you smoke?"
label(data$smok_years)="4.20.3 How many years have you smoked?"
label(data$smok_comm_2)="4.20.4 What was the most common method of smoking used when the patient was smoking?"
label(data$smok_packday_did)="4.20.5 On average how many packs a day did you smoke?"
label(data$smok_years_did)="4.20.6 How many years did you smoke?"
label(data$smok_quit)="4.20.7 How many years ago did you quit smoking?"
label(data$smok_packyear)="4.20.8 Are pack years known?"
label(data$smok_no_packyear)="4.20.9 Number of pack years?"
label(data$demographics_complete)="Complete?"
label(data$imv_1)="5.1 Did the patient have an episode of invasive mechanical ventilation (IMV)? "
label(data$imv1_start)="5.1.1 IMV start date and time: "
label(data$imv1_stop)="5.1.2 IMV stop date and time: "
label(data$dura_vm1_reportonly)="Duration of ventilation (first episode)"
label(data$imv2)="5.2 Did the patient have another episode of IMV? "
label(data$imv2_start)="5.2.1 IMV start date and time: "
label(data$imv2_stop)="5.2.2 IMV stop date and time: "
label(data$imv3)="5.3 Did the patient have another episode of IMV? "
label(data$imv3_start)="5.3.1 IMV start date and time: "
label(data$imv3_stop)="5.3.2 IMV stop date and time: "
label(data$ecmo1)="6.1 Did the patient have an episode of ECMO?"
label(data$ecmo1_specify)="6.1.1 If yes, please specify"
label(data$ecmo1_start)="6.1.2 ECMO start date and time: "
label(data$ecmo1_stop)="6.1.3 ECMO stop date and time: "
label(data$ecmo2)="6.2 Did the patient have a second episode of ECMO?"
label(data$ecmo2_specify)="6.2.1 If yes to ECMO, please specify"
label(data$ecmo2_start)="6.2.2 ECMO start date and time: "
label(data$ecmo2_stop)="6.2.3 ECMO stop date and time: "
label(data$trache)="Did the patient have a tracheostomy?"
label(data$trache_start)="RT 1.6.1, Trache inserted date and time: "
label(data$trache_stop)="RT 1.6.2, Trache removed date and time: "
label(data$niv)="Non-Invasive Ventilation- During this hospital admission"
label(data$hfnc)="1.7, High flow nasal canula oxygen therapy?"
label(data$hfnc_start)="1.7.1, HNFC start date/time"
label(data$hfnc_stop)="1.7.2, HNFC stop date/time"
label(data$hfnc_2)="1.7.3, Did the patient have another episode of high flow nasal canula oxygen therapy use"
label(data$hfnc_start_2)="1.7.4, HNFC start date/time"
label(data$hfnc_stop_2)="1.7 5, HNFC stop date/time"
label(data$bipap)="1.8, Non-Invasive Ventilation - BIPAP?"
label(data$bipap_start)="1.8 1, BIPAP start date/time"
label(data$bipap_stop)="1.8.2, BIPAP stop date/time"
label(data$bipap_2)="1.8.3, Did the patient have another episode of BIPAP?"
label(data$bipap_start_2)="1.8 4, BIPAP start date/time"
label(data$bipap_stop_2)="1.8.5, BIPAP stop date/time"
label(data$cpap)="1.9, Non-Invasive Ventilation - CPAP?"
label(data$cpap_start)="1.9.1, CPAP start date/time"
label(data$cpap_stop)="1.9.2, CPAP stop date/time"
label(data$cpap_2)="1.9.3, Did the patient have another episode of CPAP?"
label(data$cpap_start_2)="1.9.4, CPAP start date/time"
label(data$cpap_stop_2)="1.9.5, CPAP stop date/time"
label(data$vasop)="Vasopressor  - During this hospital admission Patient received a continuous infusion of a vasopressor/inotropic drug due to shock"
label(data$vasop_inot_sup)="2.0, Any vasopressor / inotropic support?"
label(data$vasop_inot_start)="2.0.1, Vasopressor/inotropic start date/time"
label(data$vasop_inot_stop)="2.0.2, Vasopressor/inotropic stop date/time"
label(data$vasop_inot_sup_2)="2.0.3, Did the patient have another episode of vasopressor/inotrope use?"
label(data$vasop_inot_start_2)="2.0.4, Vasopressor/inotropic start date/time"
label(data$vasop_inot_stop_2)="2.0.5, Vasopressor/inotropic stop date/time"
label(data$dialys)="Dialysis - During this hospital admission New episode of dialysis / hemofiltration - during this hospital admission"
label(data$dialysis)="7.1 Did the patient receive any renal replacement therapy (RRT) during this ICU admission? "
label(data$dialysis_start)="2.1.1, Dialysis start date/time"
label(data$dialysis_stop)="2.1.2, Dialysis stop date/time"
label(data$prone)="Prone Positioning - During this hospital admission Any episode of prone positioning - awake or under IMV"
label(data$prone_pos)="8.1 Prone positioning at any time during this ICU admission?"
label(data$prone_pos_start)="2.2.1, Date and time of first Proning episode"
label(data$prone_pos_stop)="2.1.2, Date and time of last Proning episode"
label(data$respiratory_treatments_complete)="Complete?"
label(data$mbperf)="5.1 Was pathogen testing done during this illness episode?"
label(data$influ_mbyn)="5.2  Influenza: "
label(data$influ_mbcat___1)="5.2.1 If Yes (choice=A/H3N2)"
label(data$influ_mbcat___2)="5.2.1 If Yes (choice=A/H1N1pdm09)"
label(data$influ_mbcat___3)="5.2.1 If Yes (choice=A/H7N9)"
label(data$influ_mbcat___4)="5.2.1 If Yes (choice=A/H5N1)"
label(data$influ_mbcat___5)="5.2.1 If Yes (choice=A - not typed)"
label(data$influ_mbcat___6)="5.2.1 If Yes (choice=B)"
label(data$influ_mbcat___888)="5.2.1 If Yes (choice=Other)"
label(data$influother_mborres)="Other influenza, specify:"
label(data$mbdat)="Collection date and time"
label(data$mbspec)="Bio specimen type"
label(data$other_mbspec)="If  OTHER; Specify"
label(data$mbmethod)="Laboratory test method"
label(data$other_mbmethod)="If Other Laboratory test method; Specify"
label(data$mbtestcd)="Pathogen tested / detected"
label(data$corona_test_num)="Number of Coronavirus tests performed"
label(data$corona_mbcat)="9.1 Coronavirus test:  Please enter yes if any positive test (COVID-19 PCR positive)"
label(data$rat_test)="9.1.1 If PCR positive No, any RAT positive test? "
label(data$corona_mbcaty)="If Yes:"
label(data$coronaother_mborres)="IF Other coronavirus; Specify:"
label(data$mbdat_cr)="Collection date and time"
label(data$mbspec_cr)="Bio specimen type"
label(data$other_mbspec_cr)="If  OTHER; Specify"
label(data$mbmethod_cr)="Laboratory test method"
label(data$other_mbmethod_cr)="If Other Laboratory test method; Specify"
label(data$variant)="9.1.2 If yes, specify variant of concern (if known)"
label(data$other_variant)="9.1.3 If Other, please specify:"
label(data$mbtestcd_cr)="Pathogen tested / detected"
label(data$corona_mbcat_2)="5.3.2 Coronavirus test 2: "
label(data$corona_mbcaty_2)="If Yes:"
label(data$coronaother_mborres_2)="IF Other coronavirus; Specify:"
label(data$mbdat_cr_2)="Collection date and time"
label(data$mbspec_cr_2)="Bio specimen type"
label(data$other_mbspec_cr_2)="If  OTHER; Specify"
label(data$mbmethod_cr_2)="Laboratory test method"
label(data$other_mbmethod_cr_2)="If Other Laboratory test method; Specify"
label(data$mbtestcd_cr_2)="Pathogen tested / detected"
label(data$corona_mbcat_3)="5.3.3 Coronavirus test 3: "
label(data$corona_mbcaty_3)="If Yes:"
label(data$coronaother_mborres_3)="IF Other coronavirus; Specify:"
label(data$mbdat_cr_3)="Collection date and time"
label(data$mbspec_cr_3)="Bio specimen type"
label(data$other_mbspec_cr_3)="If  OTHER; Specify"
label(data$mbmethod_cr_3)="Laboratory test method"
label(data$other_mbmethod_cr_3)="If Other Laboratory test method; Specify"
label(data$mbtestcd_cr_3)="Pathogen tested / detected"
label(data$corona_mbcat_4)="5.3.4 If more than 3 coronavirus tests, please specify details:"
label(data$rsv_mbcat)="5.4 RSV"
label(data$mbdat_rsv)="Collection date and time"
label(data$mbspec_rsv)="Bio specimen type"
label(data$other_mbspec_rsv)="If  OTHER; Specify"
label(data$mbmethod_rsv)="Laboratory test method"
label(data$other_mbmethod_rsv)="If Other Laboratory test method; Specify"
label(data$mbtestcd_rsv)="Pathogen tested / detected"
label(data$adeno_mbcat)="5.5 Adenovirus"
label(data$mbdat_adeno)="Collection date and time"
label(data$mbspec_adeno)="Bio specimen type"
label(data$other_mbspec_adeno)="If  OTHER; Specify"
label(data$mbmethod_adeno)="Laboratory test method"
label(data$other_mbmethod_adeno)="If Other Laboratory test method; Specify"
label(data$mbtestcd_adeno)="Pathogen tested / detected"
label(data$bact_mborres)="5.6 Bacteria"
label(data$mbdat_bac)="Collection date and time"
label(data$mbspec_bac)="Bio specimen type"
label(data$other_mbspec_bac)="If  OTHER; Specify"
label(data$mbmethod_bac)="Laboratory test method"
label(data$other_mbmethod_bac)="If Other Laboratory test method; Specify"
label(data$mbtestcd_bac)="Pathogen tested / detected"
label(data$other_mbyn)="5.7 Other infectious respiratory diagnosis: "
label(data$other_mborres)=" If YES: Other infectious respiratory diagnosis, specify:"
label(data$mbdat_other)="Collection date and time"
label(data$mbspec_other)="Bio specimen type"
label(data$other_mbspec_other)="If  OTHER; Specify"
label(data$mbmethod_other)="Laboratory test method"
label(data$other_mbmethod_other)="If Other Laboratory test method; Specify"
label(data$mbtestcd_other)="Pathogen tested / detected"
label(data$clinicalpneu_mborres)="5.8  Pneumonia: "
label(data$mbdat_cp)="Collection date and time"
label(data$mbspec_cp)="Bio specimen type"
label(data$other_mbspec_cp)="If  OTHER; Specify"
label(data$mbmethod_cp)="Laboratory test method"
label(data$other_mbmethod_cp)="If Other Laboratory test method; Specify"
label(data$mbtestcd_cp)="Pathogen tested / detected"
label(data$infectuk_mborres)="5.9 IF NONE OF THE ABOVE: Suspected Non-infective:"
label(data$precaution_date)="Date the patient was released from precautions"
label(data$neg_pcr_date)="Negative PCR date"
label(data$infectious_respiratory_disease_pathogen_testing_di_complete)="Complete?"
label(data$daily_dsstdat)="DATE OF ASSESSMENT  (a day is considered from 00:00 to 24:00)"
label(data$topq_daily)="Is patient still managed as COVID-19"
label(data$readmission_yn)="Is this day a re-admission day to ICU?"
label(data$patient_manag)="1.1a Is the patient being managed"
label(data$hosp_location)="1.1b Patient hospital locationOther set up as ICU: any other place patient is receiving ICU care and/or being managed as an ICU patient (e.g. recovery room)"
label(data$covid_contra_icu)="1.1c Did the patient contract COVID while in ICU for an unrelated reason"
label(data$first_worklo)="Does your current workload allow for data entry into desirable fields?  Please note that this will close 3 separate sections within this form."
label(data$daily_fio2_lborres)="1.2 FiO2 "
label(data$daily_sao2_lborres)="1.3 SaO2  / SpO2"
label(data$daily_pao2_lbspec)="PaO2 sample type"
label(data$daily_pao2_lborres)="1.4 PaO2"
label(data$daily_pao2_lborresu)="PaO2 unit:"
label(data$daily_pco2_lborres)="1.5 PaCO2 "
label(data$daily_pco2_lborresu)="PaCO2 Unit"
label(data$daily_ph_lborres)="1.6 pH  Document from same ABG with the worst PaO2"
label(data$daily_hco3_lborres)="1.7 HCO3-   Document from same ABG with the worst PaO2"
label(data$daily_baseex_lborres)="1.8 Base excess  Document from same ABG with the worst PaO2"
label(data$daily_gcs_vsorres)="1.9 Glasgow Coma Score:  Lowest for the day"
label(data$systolic_vsorres)="1.10 Systolic Pressure  Worst value (Lowest)"
label(data$diastolic_vsorres)="1.11 Diastolic Pressure  (from the same time point as lowest SBP recorded in 1.10)"
label(data$daily_meanart_vsorres)="1.12 Mean Arterial Pressure  Worst value relating to APACHE II"
label(data$daily_urine_lborres)="1.13 Urine output for 24 hours  From 00:00 to 23:59"
label(data$daily_nasaloxy_cmtrt)="High-flow nasal canula oxygen therapy?"
label(data$daily_bipap)="BIPAP"
label(data$daily_cpap)="CPAP"
label(data$daily_noninvasive_prtrt)="Non-invasive ventilation (e.g. BIPAP, CPAP)?"
label(data$daily_invasive_prtrt)="Invasive ventilation?"
label(data$daily_inotrope_cmyn)="Any vasopressor / inotropic support?"
label(data$daily_dopless5_cmtrt)="1.18a  Dobutamine OR Milrinone OR Levosimendan (any dose) OR  Dopamine < 5 mcg/min"
label(data$daily_dop5to15_cmtrt)="1.18b  Epinephrine/Norepinephrine < 0.1 mcg/kg/min OR Vasopressin (any dose) OR Phenylephrine OR Dopamine 5-15 mcg/min"
label(data$daily_dopgr15_cmtrt)="1.18c  Epinephrine/Norepinephrine > 0.1 mcg/kg/min OR Dopamine > 15 mcg/min"
label(data$daily_rrt_cmtrt)="Dialysis / Hemofiltration?"
label(data$daily_neuro_cmtrt)="Neuromuscular blocking agents?"
label(data$daily_prone_cmtrt)="Prone Positioning"
label(data$daily_nitritc_cmtrt)="Inhaled Nitric Oxide ?"
label(data$daily_ecmo_prtrt)="ECMO?"
label(data$daily_trach_prperf)="Tracheostomy inserted?"
label(data$daily_prperf)="Other cardiac intervention or procedure?"
label(data$daily_other_prtrt_2)="If YES to ECMO, please specify"
label(data$daily_other_prtrt)="If YES other intervention, Specify,"
label(data$daily_lbperf)="2.1  Results available for sample taken on the date in section 1 above ?"
label(data$daily_plt_lborres)="2.2 Platelet Count"
label(data$daily_plt_lborresu)="Platelets Unit"
label(data$daily_bil_lborres)="2.3 Total Bilirubin"
label(data$daily_lactate_lborres)="2.4 Lactate"
label(data$daily_lactate_lborresu)="Lactate Unit"
label(data$daily_creat_lborres)="2.5 Creatinine"
label(data$daily_creat_lborresu)="Creatinine Unit"
label(data$xray_prperf)="3.1 Chest X-ray performed?"
label(data$infiltrates_faorres)="If yes, were infiltrates present?"
label(data$infil_quad)="If yes, then number of quadrants involved"
label(data$daily_hb_lborres)="3.2 Haemoglobin"
label(data$daily_hb_lborresu)="Haemoglobin Unit"
label(data$daily_wbc_lborres)="3.3 WBC count  Lowest for the day"
label(data$daily_wbc_lborresu)="WBC Unit"
label(data$daily_wbc_lborres_2)="3.3.1 WBC count  Highest for the day"
label(data$daily_wbc_lborresu_2)="WBC Unit"
label(data$daily_lymp_lborres)="3.4 Lymphocyte count  Lowest value for the day"
label(data$daily_neutro_lborres)="3.5 Neutrophil count  Lowest value for the day"
label(data$daily_haematocrit_lborres)="3.6 Haematocrit"
label(data$daily_aptt_lborres)="3.7 APTT/APTR"
label(data$daily_pt_lborres)="3.8 PT "
label(data$daily_inr_lborres)="3.9 INR"
label(data$daily_alt_lborres)="3.10 ALT / SGPT"
label(data$daily_ast_lborres)="3.11 AST/SGOT"
label(data$daily_glucose_lborres)="3.12 Glucose  Highest for the day"
label(data$daily_glucose_lborresu)="Glucose Unit "
label(data$daily_bun_lborres)="3.13 Blood Urea Nitrogen (urea)"
label(data$daily_bun_lborres_2)="Blood Urea Nitrogen (urea) - choose from the following"
label(data$daily_bun_lborresu)="Blood Urea Nitrogen (urea) units"
label(data$daily_sodium_lborres)="3.14 Sodium "
label(data$daily_potassium_lborres)="3.15 Potassium"
label(data$daily_crp_lborres)="3.16 C-reactive protein (CRP)"
label(data$daily_fb_lborres_2)="3.17 Daily Fluid Balance (ml)  Total for the day"
label(data$daily_trp_lborres_2)="3.18 Troponin (ng)"
label(data$daily_trp_lborres_3)=" Troponin (ng) value - choose from the following"
label(data$daily_trp_i_iborres_2)="3.19 Troponin i (ng)"
label(data$daily_form_complete)="Complete?"
label(data$viralpneu_ceterm)="6.1. Viral Pneumonitis"
label(data$bactpneu_ceterm)="6.2. Bacterial pneumonia"
label(data$bacteraemia_ceterm)="6.3. Bacteraemia"
label(data$stroke_ceterm)="6.4. Stroke / CVA"
label(data$arrhythmia_ceterm)="6.5. Cardiac arrhythmia (requiring specific chemical/electrical therapy)"
label(data$pbcxr_ceterm)="6.6. Pneumothorax or pneumomediastinum or subcutaneous emphysema on CXR/CT chest"
label(data$cardiacarrest_ceterm)="6.7. Cardiac arrest"
label(data$pembolism_ceterm)="6.8 Pulmonary Embolism"
label(data$dvt_ceterm)="6.9 Deep Vein Thrombosis"
label(data$myocarditis_ceterm)="6.10 Myocarditis"
label(data$mics)="6.11 Paediatric Multisystem Inflammatory Syndrome (Paeds only)"
label(data$antiviral_cmyn)="Antiviral agent?"
label(data$antibiotic_cmyn)="Antibiotic ?"
label(data$corticost_cmyn)="Corticosteroid ?"
label(data$antibodies_cmyn)="Monoclonal antibodies (or IL-6 antagonist)?"
label(data$jak_inib)="JAK Inhibitor (i.e. Baricitinib)"
label(data$trial_drug2)="Trial drug"
label(data$otherdrug1)="Other"
label(data$antiviral_cmtrt)="10.1.1 If Yes to antiviral agent, please specify"
label(data$antiviral_cmtype)="10.1.2 If  Other antiviral agent, specify "
label(data$corticost_cmroute___1)="10.1.3 If YES to Corticosteroid, specify route (choice=Oral)"
label(data$corticost_cmroute___2)="10.1.3 If YES to Corticosteroid, specify route (choice=Intravenous)"
label(data$corticost_cmroute___3)="10.1.3 If YES to Corticosteroid, specify route (choice=Inhaled)"
label(data$monoclonals_type)="10.1.4 If Yes to monoclonal antibody (or IL-6 antagonist), please specify"
label(data$other_monoclonals)="10.1.5 If other monoclonal antibodies (or IL-6 antagonist), specify"
label(data$drug_name)="10.1.6 If Yes to trial drug, please specify the trial name and trial drug name and dose (if known)"
label(data$otherdrug2)="10.1.7 If Other, please specify"
label(data$other_complication)="If other complications, please state:"
label(data$dsstdtc_icudate)="11.1 Date and time of ICU discharge"
label(data$icu_los_reportonly)="ICU length of stay"
label(data$outcm_chest)="7.2 Chest CT scan done that assisted in diagnosis during ICU admission"
label(data$outcm_chest_dt)="7.2.1 Date and time of chest CT"
label(data$dsterm_2)="11.2 ICU discharge location"
label(data$otherhosplocation)="11.2.1 If Other hospital, please specify"
label(data$if_transferred_to_another)="11.2.2 If transferred to another ICU, please specify which hospital"
label(data$hydroxy_therapy)="Did the patient receive hydroxychloroquine?  "
label(data$antiviral_at)="7.4.3 Antiviral agent administered at "
label(data$antiviral_cmtrt_2)="7.4.3 Was the antiviral given in ICU?"
label(data$antiviral_cmtrt_3)="7.4.4 Was the antiviral given to treat COVID-19?"
label(data$corticost_at)="7.5.1 Corticosteroid administered at"
label(data$monoclonals_at)="7.6.3 Monoclonal antibodies (or IL-6 antagonist) administered at"
label(data$jak_inib_adm)="7.7.1 JAK inhibitor administered at"
label(data$other_treat)="7.8 Other COVID related treatment"
label(data$covid_study)="7.9 Was patient part of a COVID study?"
label(data$covid_study_name)="7.9.1 Study name"
label(data$trial_drug)="7.7.2 Was a drug given as part of the trial"
label(data$drug_dose)="7.7.4 Dose given"
label(data$drug_adm_days)="7.7.5 Duration of drug administration (days)"
label(data$clinic_op_improv)="7.7.6 In the treating clinicians opinion, did the drug improve patient condition?"
label(data$drug_improv_cir)="Circulatory"
label(data$drug_improv_dig)="Digestive"
label(data$drug_improv_endo)="Endocrine"
label(data$drug_improv_integ)="Integumentary"
label(data$drug_improv_imm)="Immune"
label(data$drug_improv_musc)="Muscular"
label(data$drug_improv_nerv)="Nervous"
label(data$drug_improv_ren)="Renal"
label(data$drug_improv_repro)="Reproductive"
label(data$drug_improv_resp)="Respiratory"
label(data$drug_improv_skel)="Skeletal"
label(data$icureadmission1)="11.3 Was the patient readmitted to ICU during this hospital stay?"
label(data$icureadmission1date)="11.3.1 If Yes, ICU readmission date"
label(data$icureadmission1dcdate)="11.3.2 If Yes, ICU discharge date"
label(data$icureadmission2)="11.4 Was there a second ICU readmission during this hospital stay?"
label(data$icureadmission2date)="11.4.1 If Yes, second ICU readmission date"
label(data$icureadmission2dcdate)="11.4.2 If Yes, second ICU discharge date"
label(data$icureadmission3)="11.5 Was there a third ICU readmission during this hospital stay?"
label(data$icureadmissiondate3)="11.5.1 If Yes, third ICU readmission date"
label(data$icureadmissiondc3)="11.5.2 If Yes, third ICU discharge date"
label(data$dsterm)="11.6 Hospital Outcome:"
label(data$outcm_cod)="11.6.1 Cause of death"
label(data$suppds_qval_v2)="7.10 Ability to self-care at discharge versus before illness"
label(data$outcm_cod_o)="11.6.2 If Other cause of death, please specify"
label(data$death_dt)="11.6.3 Date and time of death"
label(data$dsstdtc)="11.7 Date and time of hospital discharge"
label(data$hosp_los_reportonly)="Hospital length of stay"
label(data$post_disch)="8. POST DISCHARGE SUPPORT"
label(data$dis_supp_care)="8.1 Discharged with new supportive care"
label(data$support_spec)="8.1.1 Please specify support"
label(data$support_spec_o)="8.1.2 Please specify other form of support"
label(data$core_addinfo1)="Additional information"
label(data$readm_icu)="10. Re-admission to ICU"
label(data$readmission_icu)="10.1 Did the patient get re-admitted to ICU?"
label(data$readmission_diag)="10.1.1 What was the diagnosis?"
label(data$readmission_days)="10.1.2 How many days were they in ICU during this re-admission?"
label(data$readmission_status)="10.1.3 Were they discharged from ICU alive?"
label(data$apache_score)="9.1 APACHE II Score, within 24 hours of FIRST admission to ICU"
label(data$outcomes_complete)="Complete?"
label(data$hba1c)="1.1 Most recent HbA1c (%) if recorded within 120 days of this ICU admission "
label(data$diabetes_notes)="Additional Diabetes information "
label(data$diabetes_sub_analysis_complete)="Complete?"
label(data$daily_date)="Date of ICU Day [current-instance]"
label(data$time_bg1)="1.1 Time of blood glucose #1"
label(data$bglucose_1)="1.2 Blood glucose value #1 (mM/L)"
label(data$time_bg2)="1.1 Time of blood glucose #2"
label(data$bglucose_2)="1.2 Blood glucose value #2 (mM/L)"
label(data$time_bg3)="1.1 Time of blood glucose #3"
label(data$bglucose_3)="1.2 Blood glucose value #3 (mM/L)"
label(data$time_bg4)="1.1 Time of blood glucose #4"
label(data$bglucose_4)="1.2 Blood glucose value #4 (mM/L)"
label(data$time_bg5)="1.1 Time of blood glucose #5"
label(data$bglucose_5)="1.2 Blood glucose value #5 (mM/L)"
label(data$time_bg6)="1.1 Time of blood glucose #6"
label(data$bglucose_6)="1.2 Blood glucose value #6 (mM/L)"
label(data$time_bg7)="1.1 Time of blood glucose #7"
label(data$bglucose_7)="1.2 Blood glucose value #7 (mM/L)"
label(data$time_bg8)="1.1 Time of blood glucose #8"
label(data$bglucose_8)="1.2 Blood glucose value #8 (mM/L)"
label(data$time_bg9)="1.1 Time of blood glucose #9"
label(data$bglucose_9)="1.2 Blood glucose value #9 (mM/L)"
label(data$time_bg10)="1.1 Time of blood glucose #10"
label(data$bglucose_10)="1.2 Blood glucose value #10 (mM/L)"
label(data$time_bg11)="1.1 Time of blood glucose #11"
label(data$bglucose_11)="1.2 Blood glucose value #11 (mM/L)"
label(data$time_bg12)="1.1 Time of blood glucose #12"
label(data$bglucose_12)="1.2 Blood glucose value #12 (mM/L)"
label(data$time_bg13)="1.1 Time of blood glucose #13"
label(data$bglucose_13)="1.2 Blood glucose value #13 (mM/L)"
label(data$time_bg15)="1.1 Time of blood glucose #14"
label(data$bglucose_14)="1.2 Blood glucose value #14 (mM/L)"
label(data$time_bg14)="1.1 Time of blood glucose #15"
label(data$bglucose_15)="1.2 Blood glucose value #15 (mM/L)"
label(data$time_bg16)="1.1 Time of blood glucose #16"
label(data$bglucose_16)="1.2 Blood glucose value #16 (mM/L)"
label(data$time_bg17)="1.1 Time of blood glucose #17"
label(data$bglucose_17)="1.2 Blood glucose value #17 (mM/L)"
label(data$time_bg18)="1.1 Time of blood glucose #18"
label(data$bglucose_18)="1.2 Blood glucose value #18 (mM/L)"
label(data$time_bg19)="1.1 Time of blood glucose #19"
label(data$bglucose_19)="1.2 Blood glucose value #19 (mM/L)"
label(data$time_bg20)="1.1 Time of blood glucose #20"
label(data$bglucose_20)="1.2 Blood glucose value #20 (mM/L)"
label(data$insulin)="1.3 Daily insulin requirement (units/day)"
label(data$diabetes_daily_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("day_1_arm_1","day_2_arm_1","day_3_arm_1","day_4_arm_1","day_5_arm_1","day_6_arm_1","day_7_arm_1","day_8_arm_1","day_9_arm_1","day_10_arm_1","day_11_arm_1","day_12_arm_1","day_13_arm_1","day_14_arm_1","dischargeoutcome_arm_1","diabetes_sub_analy_arm_1"))
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument,levels=c("daily_form"))
data$redcap_data_access_group.factor = factor(data$redcap_data_access_group,levels=c("001_royal_darwin_h","003_alice_springs","004_canberra_hospi","005_albury_wodonga","007_the_queen_eliz","008_royal_north_sh","009_werribee_mercy","011_royal_perth_ho","012_royal_prince_a","013_box_hill_hospi","014_st_george_hosp","015_austin_hospita","017_monash_childre","019_queensland_chi","020_royal_brisbane","024_dandenong_hosp","026_cairns_hospita","029_ballarat_base","033_john_hunter_ho","036_epworth_richmo","037_bendigo_hospit","040_mater_miserico","042_redcliffe_hosp","045_flinders_medic","046_liverpool_hosp","051_the_prince_cha","057_fiona_stanley","060_angliss_hospit","061_casey_hospital","079_prince_of_wale","080_concord_hospit","094_northeast_heal","101_royal_adelaide","107_lismore_base_h","108_the_alfred_hos","111_nepean_hospita","113_launceston_hos","115_calvary_mater","116_lyell_mcewin_s","117_toowoomba_hosp","123_logan_hospital","127_bankstownlidco","128_st_john_of_god","131_wollongong_hos","133_cabrini_hospit","134_monash_medical","136_st_john_of_god","138_royal_hobart_h","142_westmead_hospi","143_the_northern_h","145_barwon_health","149_gold_coast_hos","163_st_vincents_ho","165_maroondah_hosp","168_ipswich_hospit","169_sir_charles_ga","178_st_vincents_ho","182_frankston_hosp","186_bundaberg_hosp","188_royal_melbourn","198_footscray_hosp","205_caboolture_hos","210_campbelltown_h","211_mildura_base_h","223_princess_alexa","224_hervey_bay_hos","235_joondalup_heal","249_bunbury_hospit","258_warrnambool_ba","262_sunshine_hospi","277_childrens_hosp","279_perth_children","281_royal_children","283_sydney_childre","284_adelaide_women","286_sunshine_coast","345_rockingham_gen","isaric_uk"))
data$corona_ieorres.factor = factor(data$corona_ieorres,levels=c("1","0"))
data$noncovid___1.factor = factor(data$noncovid___1,levels=c("0","1"))
data$noncovid___2.factor = factor(data$noncovid___2,levels=c("0","1"))
data$noncovid___3.factor = factor(data$noncovid___3,levels=c("0","1"))
data$noncovid___4.factor = factor(data$noncovid___4,levels=c("0","1"))
data$noncovid___9.factor = factor(data$noncovid___9,levels=c("0","1"))
data$noncovid_spec_treat_2.factor = factor(data$noncovid_spec_treat_2,levels=c("1","0"))
data$noncovid_complic_2.factor = factor(data$noncovid_complic_2,levels=c("1","0"))
data$noncovid_resp_failure_2.factor = factor(data$noncovid_resp_failure_2,levels=c("1","0"))
data$noncovid_incidental_2.factor = factor(data$noncovid_incidental_2,levels=c("1","0"))
data$incidental_diagnosis_2.factor = factor(data$incidental_diagnosis_2,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$for_non_covid_19_sari_case.factor = factor(data$for_non_covid_19_sari_case,levels=c("1","0"))
data$corona_ieorres_2.factor = factor(data$corona_ieorres_2,levels=c("3","4"))
data$proven_spec_treat.factor = factor(data$proven_spec_treat,levels=c("1","0"))
data$proven_resp_failure.factor = factor(data$proven_resp_failure,levels=c("1","0"))
data$proven_complic.factor = factor(data$proven_complic,levels=c("1","0"))
data$proven_incidental.factor = factor(data$proven_incidental,levels=c("1","0"))
data$incidental_diagnosis.factor = factor(data$incidental_diagnosis,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$symptoms_epi_travel.factor = factor(data$symptoms_epi_travel,levels=c("1","2","3"))
data$symptoms_epi_physical.factor = factor(data$symptoms_epi_physical,levels=c("1","2","3"))
data$symptoms_epi_healthfac.factor = factor(data$symptoms_epi_healthfac,levels=c("1","2","3"))
data$symptoms_epi_lab.factor = factor(data$symptoms_epi_lab,levels=c("1","2","3"))
data$supper_trcntry.factor = factor(data$supper_trcntry,levels=c("4","5","6","7","8","9","10","11","12","13","14","15","201","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","202","43","44","45","205","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","203","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","206","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","204","193","194","195","196","197","198","199","200"))
data$covid_vac.factor = factor(data$covid_vac,levels=c("1","2","3"))
data$vac_doses.factor = factor(data$vac_doses,levels=c("1","2","3","4","5","6"))
data$vac_type.factor = factor(data$vac_type,levels=c("1","2","3","4","5"))
data$time_since_vac_dose.factor = factor(data$time_since_vac_dose,levels=c("1","2","3"))
data$inclusion_criteria_complete.factor = factor(data$inclusion_criteria_complete,levels=c("0","1","2"))
data$ethnic___1.factor = factor(data$ethnic___1,levels=c("0","1"))
data$ethnic___2.factor = factor(data$ethnic___2,levels=c("0","1"))
data$ethnic___3.factor = factor(data$ethnic___3,levels=c("0","1"))
data$ethnic___4.factor = factor(data$ethnic___4,levels=c("0","1"))
data$ethnic___5.factor = factor(data$ethnic___5,levels=c("0","1"))
data$ethnic___6.factor = factor(data$ethnic___6,levels=c("0","1"))
data$ethnic___7.factor = factor(data$ethnic___7,levels=c("0","1"))
data$ethnic___8.factor = factor(data$ethnic___8,levels=c("0","1"))
data$ethnic___9.factor = factor(data$ethnic___9,levels=c("0","1"))
data$ethnic___10.factor = factor(data$ethnic___10,levels=c("0","1"))
data$healthwork_empl.factor = factor(data$healthwork_empl,levels=c("1","0"))
data$healthwork_erterm.factor = factor(data$healthwork_erterm,levels=c("6","1","2","3","4","5","7","8","9","10","11"))
data$group_residential.factor = factor(data$group_residential,levels=c("1","2","3","4","5","6","7","8","9"))
data$age_estimateyearsu.factor = factor(data$age_estimateyearsu,levels=c("1","2"))
data$sex.factor = factor(data$sex,levels=c("1","2","3"))
data$postpart_rptestcd.factor = factor(data$postpart_rptestcd,levels=c("1","0"))
data$pregyn_rptestcd.factor = factor(data$pregyn_rptestcd,levels=c("1","0","998","999"))
data$pregout_rptestcd.factor = factor(data$pregout_rptestcd,levels=c("1","2"))
data$aplb_lbperf.factor = factor(data$aplb_lbperf,levels=c("1","2","3"))
data$aplb_lborres.factor = factor(data$aplb_lborres,levels=c("1","2"))
data$aplb_lbmethod.factor = factor(data$aplb_lbmethod,levels=c("1","2"))
data$apdm_age.factor = factor(data$apdm_age,levels=c("1","0"))
data$apvs_weightu.factor = factor(data$apvs_weightu,levels=c("1","2"))
data$apsc_gestout.factor = factor(data$apsc_gestout,levels=c("1","2","3"))
data$apsc_brfedind.factor = factor(data$apsc_brfedind,levels=c("1","2","3"))
data$apsc_brfedindy.factor = factor(data$apsc_brfedindy,levels=c("1","2","3"))
data$apsc_dvageind.factor = factor(data$apsc_dvageind,levels=c("1","2","3"))
data$apsc_vcageind.factor = factor(data$apsc_vcageind,levels=c("1","2","3"))
data$hostdat_icu_admit.factor = factor(data$hostdat_icu_admit,levels=c("1","2"))
data$previousicu.factor = factor(data$previousicu,levels=c("1","0"))
data$previousicu_2.factor = factor(data$previousicu_2,levels=c("1","0"))
data$hooccur.factor = factor(data$hooccur,levels=c("1","2","3"))
data$subjidcat_transfer.factor = factor(data$subjidcat_transfer,levels=c("1","2","3","4"))
data$misc_pims_paed.factor = factor(data$misc_pims_paed,levels=c("1","0"))
data$orig_adm_covid.factor = factor(data$orig_adm_covid,levels=c("1","0"))
data$fever_ceoccur_v2.factor = factor(data$fever_ceoccur_v2,levels=c("1","2"))
data$cough_ceoccur_v2.factor = factor(data$cough_ceoccur_v2,levels=c("1","2"))
data$coughsput_ceoccur_v2.factor = factor(data$coughsput_ceoccur_v2,levels=c("1","2"))
data$coughhb_ceoccur_v2.factor = factor(data$coughhb_ceoccur_v2,levels=c("1","2"))
data$sorethroat_ceoccur_v2.factor = factor(data$sorethroat_ceoccur_v2,levels=c("1","2"))
data$runnynose_ceoccur_v2.factor = factor(data$runnynose_ceoccur_v2,levels=c("1","2"))
data$earpain_ceoccur_v2.factor = factor(data$earpain_ceoccur_v2,levels=c("1","2"))
data$wheeze_ceoccur_v2.factor = factor(data$wheeze_ceoccur_v2,levels=c("1","2"))
data$chestpain_ceoccur_v2.factor = factor(data$chestpain_ceoccur_v2,levels=c("1","2"))
data$myalgia_ceoccur_v2.factor = factor(data$myalgia_ceoccur_v2,levels=c("1","2"))
data$jointpain_ceoccur_v2.factor = factor(data$jointpain_ceoccur_v2,levels=c("1","2"))
data$fatigue_ceoccur_v2.factor = factor(data$fatigue_ceoccur_v2,levels=c("1","2"))
data$shortbreath_ceoccur_v2.factor = factor(data$shortbreath_ceoccur_v2,levels=c("1","2"))
data$lowerchest_ceoccur_v2.factor = factor(data$lowerchest_ceoccur_v2,levels=c("1","2"))
data$headache_ceoccur_v2.factor = factor(data$headache_ceoccur_v2,levels=c("1","2"))
data$confusion_ceoccur_v2.factor = factor(data$confusion_ceoccur_v2,levels=c("1","2"))
data$seizures_cecoccur_v2.factor = factor(data$seizures_cecoccur_v2,levels=c("1","2"))
data$abdopain_ceoccur_v2.factor = factor(data$abdopain_ceoccur_v2,levels=c("1","2"))
data$vomit_ceoccur_v2.factor = factor(data$vomit_ceoccur_v2,levels=c("1","2"))
data$diarrhoea_ceoccur_v2.factor = factor(data$diarrhoea_ceoccur_v2,levels=c("1","2"))
data$conjunct_ceoccur_v2.factor = factor(data$conjunct_ceoccur_v2,levels=c("1","2"))
data$rash_ceoccur_v2.factor = factor(data$rash_ceoccur_v2,levels=c("1","2"))
data$skinulcers_ceoccur_v2.factor = factor(data$skinulcers_ceoccur_v2,levels=c("1","2"))
data$lymp_ceoccur_v2.factor = factor(data$lymp_ceoccur_v2,levels=c("1","2"))
data$bleed_ceoccur_v2.factor = factor(data$bleed_ceoccur_v2,levels=c("1","2"))
data$bleed_ceterm_v2.factor = factor(data$bleed_ceterm_v2,levels=c("1","2"))
data$lost_ceterm_v2.factor = factor(data$lost_ceterm_v2,levels=c("1","2"))
data$rigor_ceoccur_v2.factor = factor(data$rigor_ceoccur_v2,levels=c("1","2"))
data$paeds_misc.factor = factor(data$paeds_misc,levels=c("1","2"))
data$temp_vsorresu.factor = factor(data$temp_vsorresu,levels=c("1","2"))
data$dehydration_vsorres.factor = factor(data$dehydration_vsorres,levels=c("1","2","3"))
data$stercap_vsyn.factor = factor(data$stercap_vsyn,levels=c("1","0"))
data$stercap_vsorres.factor = factor(data$stercap_vsorres,levels=c("1","2","3"))
data$oxy_vsorresu.factor = factor(data$oxy_vsorresu,levels=c("1","2","3"))
data$chroniccard_mhyn.factor = factor(data$chroniccard_mhyn,levels=c("1","2","3"))
data$aceinhibitor_myhn.factor = factor(data$aceinhibitor_myhn,levels=c("1","2","3"))
data$obesity_mhyn.factor = factor(data$obesity_mhyn,levels=c("1","2","3"))
data$chronicpul_mhyn.factor = factor(data$chronicpul_mhyn,levels=c("1","2","3"))
data$diabetiscomp_mhyn.factor = factor(data$diabetiscomp_mhyn,levels=c("1","2","3"))
data$diabetes_mhyn.factor = factor(data$diabetes_mhyn,levels=c("1","2","3"))
data$asthma_mhyn.factor = factor(data$asthma_mhyn,levels=c("1","2","3"))
data$renal_mhyn.factor = factor(data$renal_mhyn,levels=c("1","2","3"))
data$rheumatology_mhyr.factor = factor(data$rheumatology_mhyr,levels=c("1","2","3"))
data$mildliv_mhyn.factor = factor(data$mildliv_mhyn,levels=c("1","2","3"))
data$modliver_mhyn.factor = factor(data$modliver_mhyn,levels=c("1","2","3"))
data$dementia_mhyn.factor = factor(data$dementia_mhyn,levels=c("1","2","3"))
data$malnutrition_mhyn.factor = factor(data$malnutrition_mhyn,levels=c("1","2","3"))
data$chronicneu_mhyn.factor = factor(data$chronicneu_mhyn,levels=c("1","2","3"))
data$malignantneo_mhyn.factor = factor(data$malignantneo_mhyn,levels=c("1","2","3"))
data$other_mhyn.factor = factor(data$other_mhyn,levels=c("1","2","3"))
data$chronhaemo_mhyn.factor = factor(data$chronhaemo_mhyn,levels=c("1","2","3"))
data$aidshiv_mhyn.factor = factor(data$aidshiv_mhyn,levels=c("1","2","3"))
data$chrimm_mhyn.factor = factor(data$chrimm_mhyn,levels=c("1","2","3"))
data$organ_transpl.factor = factor(data$organ_transpl,levels=c("1","0"))
data$smok_curr.factor = factor(data$smok_curr,levels=c("1","0"))
data$smok_comm.factor = factor(data$smok_comm,levels=c("1","2","3","4"))
data$smok_comm_2.factor = factor(data$smok_comm_2,levels=c("1","2","3","4"))
data$smok_packyear.factor = factor(data$smok_packyear,levels=c("1","0"))
data$demographics_complete.factor = factor(data$demographics_complete,levels=c("0","1","2"))
data$imv_1.factor = factor(data$imv_1,levels=c("1","2"))
data$imv2.factor = factor(data$imv2,levels=c("1","2"))
data$imv3.factor = factor(data$imv3,levels=c("1","2"))
data$ecmo1.factor = factor(data$ecmo1,levels=c("1","2"))
data$ecmo1_specify.factor = factor(data$ecmo1_specify,levels=c("1","2"))
data$ecmo2.factor = factor(data$ecmo2,levels=c("1","2"))
data$ecmo2_specify.factor = factor(data$ecmo2_specify,levels=c("1","2"))
data$trache.factor = factor(data$trache,levels=c("1","2"))
data$hfnc.factor = factor(data$hfnc,levels=c("1","0"))
data$hfnc_2.factor = factor(data$hfnc_2,levels=c("1","0"))
data$bipap.factor = factor(data$bipap,levels=c("1","0"))
data$bipap_2.factor = factor(data$bipap_2,levels=c("1","0"))
data$cpap.factor = factor(data$cpap,levels=c("1","0"))
data$cpap_2.factor = factor(data$cpap_2,levels=c("1","0"))
data$vasop_inot_sup.factor = factor(data$vasop_inot_sup,levels=c("1","0"))
data$vasop_inot_sup_2.factor = factor(data$vasop_inot_sup_2,levels=c("1","0"))
data$dialysis.factor = factor(data$dialysis,levels=c("1","0"))
data$prone_pos.factor = factor(data$prone_pos,levels=c("1","0"))
data$respiratory_treatments_complete.factor = factor(data$respiratory_treatments_complete,levels=c("0","1","2"))
data$mbperf.factor = factor(data$mbperf,levels=c("1","2"))
data$influ_mbyn.factor = factor(data$influ_mbyn,levels=c("2","1","0"))
data$influ_mbcat___1.factor = factor(data$influ_mbcat___1,levels=c("0","1"))
data$influ_mbcat___2.factor = factor(data$influ_mbcat___2,levels=c("0","1"))
data$influ_mbcat___3.factor = factor(data$influ_mbcat___3,levels=c("0","1"))
data$influ_mbcat___4.factor = factor(data$influ_mbcat___4,levels=c("0","1"))
data$influ_mbcat___5.factor = factor(data$influ_mbcat___5,levels=c("0","1"))
data$influ_mbcat___6.factor = factor(data$influ_mbcat___6,levels=c("0","1"))
data$influ_mbcat___888.factor = factor(data$influ_mbcat___888,levels=c("0","1"))
data$mbspec.factor = factor(data$mbspec,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$mbmethod.factor = factor(data$mbmethod,levels=c("1","2","3"))
data$corona_test_num.factor = factor(data$corona_test_num,levels=c("1","2","3","4"))
data$corona_mbcat.factor = factor(data$corona_mbcat,levels=c("2","1","0"))
data$rat_test.factor = factor(data$rat_test,levels=c("1","0"))
data$corona_mbcaty.factor = factor(data$corona_mbcaty,levels=c("1","2","888"))
data$mbspec_cr.factor = factor(data$mbspec_cr,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$mbmethod_cr.factor = factor(data$mbmethod_cr,levels=c("1","2","3"))
data$variant.factor = factor(data$variant,levels=c("1","2","3","6","7","8","9","10","11","12","4","5"))
data$corona_mbcat_2.factor = factor(data$corona_mbcat_2,levels=c("2","1","0"))
data$corona_mbcaty_2.factor = factor(data$corona_mbcaty_2,levels=c("1","2","888"))
data$mbspec_cr_2.factor = factor(data$mbspec_cr_2,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$mbmethod_cr_2.factor = factor(data$mbmethod_cr_2,levels=c("1","2","3"))
data$corona_mbcat_3.factor = factor(data$corona_mbcat_3,levels=c("2","1","0"))
data$corona_mbcaty_3.factor = factor(data$corona_mbcaty_3,levels=c("1","2","888"))
data$mbspec_cr_3.factor = factor(data$mbspec_cr_3,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$mbmethod_cr_3.factor = factor(data$mbmethod_cr_3,levels=c("1","2","3"))
data$rsv_mbcat.factor = factor(data$rsv_mbcat,levels=c("2","1","0"))
data$mbspec_rsv.factor = factor(data$mbspec_rsv,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$mbmethod_rsv.factor = factor(data$mbmethod_rsv,levels=c("1","2","3"))
data$adeno_mbcat.factor = factor(data$adeno_mbcat,levels=c("2","1","0"))
data$mbspec_adeno.factor = factor(data$mbspec_adeno,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$mbmethod_adeno.factor = factor(data$mbmethod_adeno,levels=c("1","2","3"))
data$bact_mborres.factor = factor(data$bact_mborres,levels=c("1","2"))
data$mbspec_bac.factor = factor(data$mbspec_bac,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$mbmethod_bac.factor = factor(data$mbmethod_bac,levels=c("1","2","3"))
data$other_mbyn.factor = factor(data$other_mbyn,levels=c("2","1","0"))
data$mbspec_other.factor = factor(data$mbspec_other,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$mbmethod_other.factor = factor(data$mbmethod_other,levels=c("1","2","3"))
data$clinicalpneu_mborres.factor = factor(data$clinicalpneu_mborres,levels=c("1","0","2"))
data$mbspec_cp.factor = factor(data$mbspec_cp,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$mbmethod_cp.factor = factor(data$mbmethod_cp,levels=c("1","2","3"))
data$infectuk_mborres.factor = factor(data$infectuk_mborres,levels=c("1","2"))
data$infectious_respiratory_disease_pathogen_testing_di_complete.factor = factor(data$infectious_respiratory_disease_pathogen_testing_di_complete,levels=c("0","1","2"))
data$topq_daily.factor = factor(data$topq_daily,levels=c("1","0"))
data$readmission_yn.factor = factor(data$readmission_yn,levels=c("1","0"))
data$patient_manag.factor = factor(data$patient_manag,levels=c("1","2","3","4","5","6"))
data$hosp_location.factor = factor(data$hosp_location,levels=c("1","2","3","4"))
data$covid_contra_icu.factor = factor(data$covid_contra_icu,levels=c("1","0"))
data$first_worklo.factor = factor(data$first_worklo,levels=c("1","0"))
data$daily_pao2_lbspec.factor = factor(data$daily_pao2_lbspec,levels=c("1","2","3","4"))
data$daily_pao2_lborresu.factor = factor(data$daily_pao2_lborresu,levels=c("1","2"))
data$daily_pco2_lborresu.factor = factor(data$daily_pco2_lborresu,levels=c("1","2"))
data$daily_nasaloxy_cmtrt.factor = factor(data$daily_nasaloxy_cmtrt,levels=c("1","2"))
data$daily_bipap.factor = factor(data$daily_bipap,levels=c("1","2"))
data$daily_cpap.factor = factor(data$daily_cpap,levels=c("1","2"))
data$daily_noninvasive_prtrt.factor = factor(data$daily_noninvasive_prtrt,levels=c("1","2"))
data$daily_invasive_prtrt.factor = factor(data$daily_invasive_prtrt,levels=c("1","2"))
data$daily_inotrope_cmyn.factor = factor(data$daily_inotrope_cmyn,levels=c("1","2"))
data$daily_dopless5_cmtrt.factor = factor(data$daily_dopless5_cmtrt,levels=c("1","2"))
data$daily_dop5to15_cmtrt.factor = factor(data$daily_dop5to15_cmtrt,levels=c("1","2"))
data$daily_dopgr15_cmtrt.factor = factor(data$daily_dopgr15_cmtrt,levels=c("1","2"))
data$daily_rrt_cmtrt.factor = factor(data$daily_rrt_cmtrt,levels=c("1","2"))
data$daily_neuro_cmtrt.factor = factor(data$daily_neuro_cmtrt,levels=c("1","2"))
data$daily_prone_cmtrt.factor = factor(data$daily_prone_cmtrt,levels=c("1","2"))
data$daily_nitritc_cmtrt.factor = factor(data$daily_nitritc_cmtrt,levels=c("1","2"))
data$daily_ecmo_prtrt.factor = factor(data$daily_ecmo_prtrt,levels=c("1","2"))
data$daily_trach_prperf.factor = factor(data$daily_trach_prperf,levels=c("1","2"))
data$daily_prperf.factor = factor(data$daily_prperf,levels=c("1","2"))
data$daily_other_prtrt_2.factor = factor(data$daily_other_prtrt_2,levels=c("1","2"))
data$daily_lbperf.factor = factor(data$daily_lbperf,levels=c("1","0"))
data$daily_plt_lborresu.factor = factor(data$daily_plt_lborresu,levels=c("1","2"))
data$daily_lactate_lborresu.factor = factor(data$daily_lactate_lborresu,levels=c("1","2"))
data$daily_creat_lborresu.factor = factor(data$daily_creat_lborresu,levels=c("1","2","3"))
data$xray_prperf.factor = factor(data$xray_prperf,levels=c("1","2","3"))
data$infiltrates_faorres.factor = factor(data$infiltrates_faorres,levels=c("1","2"))
data$infil_quad.factor = factor(data$infil_quad,levels=c("1","2","3","4","5"))
data$daily_hb_lborresu.factor = factor(data$daily_hb_lborresu,levels=c("1","2"))
data$daily_wbc_lborresu.factor = factor(data$daily_wbc_lborresu,levels=c("1","2"))
data$daily_wbc_lborresu_2.factor = factor(data$daily_wbc_lborresu_2,levels=c("1","2"))
data$daily_glucose_lborresu.factor = factor(data$daily_glucose_lborresu,levels=c("1","2"))
data$daily_bun_lborres_2.factor = factor(data$daily_bun_lborres_2,levels=c("1","2","3"))
data$daily_bun_lborresu.factor = factor(data$daily_bun_lborresu,levels=c("1","2"))
data$daily_trp_lborres_3.factor = factor(data$daily_trp_lborres_3,levels=c("1","2","3"))
data$daily_form_complete.factor = factor(data$daily_form_complete,levels=c("0","1","2"))
data$viralpneu_ceterm.factor = factor(data$viralpneu_ceterm,levels=c("1","2","3"))
data$bactpneu_ceterm.factor = factor(data$bactpneu_ceterm,levels=c("1","2","3"))
data$bacteraemia_ceterm.factor = factor(data$bacteraemia_ceterm,levels=c("1","2","3"))
data$stroke_ceterm.factor = factor(data$stroke_ceterm,levels=c("1","2","3"))
data$arrhythmia_ceterm.factor = factor(data$arrhythmia_ceterm,levels=c("1","2","3"))
data$pbcxr_ceterm.factor = factor(data$pbcxr_ceterm,levels=c("1","2","3"))
data$cardiacarrest_ceterm.factor = factor(data$cardiacarrest_ceterm,levels=c("1","2","3"))
data$pembolism_ceterm.factor = factor(data$pembolism_ceterm,levels=c("1","2","3"))
data$dvt_ceterm.factor = factor(data$dvt_ceterm,levels=c("1","2","3"))
data$myocarditis_ceterm.factor = factor(data$myocarditis_ceterm,levels=c("1","2","3"))
data$mics.factor = factor(data$mics,levels=c("1","2","3"))
data$antiviral_cmyn.factor = factor(data$antiviral_cmyn,levels=c("1","2"))
data$antibiotic_cmyn.factor = factor(data$antibiotic_cmyn,levels=c("1","2"))
data$corticost_cmyn.factor = factor(data$corticost_cmyn,levels=c("1","2"))
data$antibodies_cmyn.factor = factor(data$antibodies_cmyn,levels=c("1","2"))
data$jak_inib.factor = factor(data$jak_inib,levels=c("1","2"))
data$trial_drug2.factor = factor(data$trial_drug2,levels=c("1","2"))
data$otherdrug1.factor = factor(data$otherdrug1,levels=c("1","2"))
data$antiviral_cmtrt.factor = factor(data$antiviral_cmtrt,levels=c("7","8","9","1","2","3","4","5","6"))
data$corticost_cmroute___1.factor = factor(data$corticost_cmroute___1,levels=c("0","1"))
data$corticost_cmroute___2.factor = factor(data$corticost_cmroute___2,levels=c("0","1"))
data$corticost_cmroute___3.factor = factor(data$corticost_cmroute___3,levels=c("0","1"))
data$monoclonals_type.factor = factor(data$monoclonals_type,levels=c("3","5","1","6","2"))
data$outcm_chest.factor = factor(data$outcm_chest,levels=c("1","0"))
data$dsterm_2.factor = factor(data$dsterm_2,levels=c("1","2","3","4","5"))
data$otherhosplocation.factor = factor(data$otherhosplocation,levels=c("1","2","3"))
data$hydroxy_therapy.factor = factor(data$hydroxy_therapy,levels=c("1","0"))
data$antiviral_at.factor = factor(data$antiviral_at,levels=c("1","2","3"))
data$antiviral_cmtrt_2.factor = factor(data$antiviral_cmtrt_2,levels=c("1","0"))
data$antiviral_cmtrt_3.factor = factor(data$antiviral_cmtrt_3,levels=c("1","0"))
data$corticost_at.factor = factor(data$corticost_at,levels=c("1","2","3"))
data$monoclonals_at.factor = factor(data$monoclonals_at,levels=c("1","2","3"))
data$jak_inib_adm.factor = factor(data$jak_inib_adm,levels=c("1","2","3"))
data$covid_study.factor = factor(data$covid_study,levels=c("1","0"))
data$trial_drug.factor = factor(data$trial_drug,levels=c("1","0"))
data$clinic_op_improv.factor = factor(data$clinic_op_improv,levels=c("1","2"))
data$drug_improv_cir.factor = factor(data$drug_improv_cir,levels=c("1","2","3","4","5","6"))
data$drug_improv_dig.factor = factor(data$drug_improv_dig,levels=c("1","2","3","4","5","6"))
data$drug_improv_endo.factor = factor(data$drug_improv_endo,levels=c("1","2","3","4","5","6"))
data$drug_improv_integ.factor = factor(data$drug_improv_integ,levels=c("1","2","3","4","5","6"))
data$drug_improv_imm.factor = factor(data$drug_improv_imm,levels=c("1","2","3","4","5","6"))
data$drug_improv_musc.factor = factor(data$drug_improv_musc,levels=c("1","2","3","4","5","6"))
data$drug_improv_nerv.factor = factor(data$drug_improv_nerv,levels=c("1","2","3","4","5","6"))
data$drug_improv_ren.factor = factor(data$drug_improv_ren,levels=c("1","2","3","4","5","6"))
data$drug_improv_repro.factor = factor(data$drug_improv_repro,levels=c("1","2","3","4","5","6"))
data$drug_improv_resp.factor = factor(data$drug_improv_resp,levels=c("1","2","3","4","5","6"))
data$drug_improv_skel.factor = factor(data$drug_improv_skel,levels=c("1","2","3","4","5","6"))
data$icureadmission1.factor = factor(data$icureadmission1,levels=c("1","0"))
data$icureadmission2.factor = factor(data$icureadmission2,levels=c("1","0"))
data$icureadmission3.factor = factor(data$icureadmission3,levels=c("1","0"))
data$dsterm.factor = factor(data$dsterm,levels=c("1","2","3","4","5","6"))
data$outcm_cod.factor = factor(data$outcm_cod,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$suppds_qval_v2.factor = factor(data$suppds_qval_v2,levels=c("1","2","3","4"))
data$dis_supp_care.factor = factor(data$dis_supp_care,levels=c("1","0"))
data$support_spec.factor = factor(data$support_spec,levels=c("1","2","3","4"))
data$readmission_icu.factor = factor(data$readmission_icu,levels=c("1","0"))
data$readmission_status.factor = factor(data$readmission_status,levels=c("1","0"))
data$outcomes_complete.factor = factor(data$outcomes_complete,levels=c("0","1","2"))
data$diabetes_sub_analysis_complete.factor = factor(data$diabetes_sub_analysis_complete,levels=c("0","1","2"))
data$diabetes_daily_complete.factor = factor(data$diabetes_daily_complete,levels=c("0","1","2"))

levels(data$redcap_event_name.factor)=c("Day 1","Day 2","Day 3","Day 4","Day 5","Day 6","Day 7","Day 8","Day 9","Day 10","Day 11","Day 12","Day 13","Day 14","Discharge/Outcome","Diabetes Sub Analysis")
levels(data$redcap_repeat_instrument.factor)=c("Daily Form")
levels(data$redcap_data_access_group.factor)=c("001, Royal Darwin Hospital, NT","003, Alice Springs Hospital, NT","004, Canberra Hospital, ACT","005, Albury Wodonga Health, VIC","007, The Queen Elizabeth Hospital, SA","008, Royal North Shore Hospital, NSW","009, Werribee Mercy Hospital, VIC","011, Royal Perth Hospital, WA","012, Royal Prince Alfred Hospital, NSW","013, Box Hill Hospital, VIC","014, St George Hospital, NSW","015, Austin Hospital, VIC","017, Monash Childrens Hospital, VIC","019, Queensland Childrens Hospital, QLD","020, Royal Brisbane and Womens Hospital, QLD","024, Dandenong Hospital, VIC","026, Cairns Hospital, QLD","029, Ballarat Base Hospital, VIC","033, John Hunter Hospital, NSW","036, Epworth Richmond, VIC","037, Bendigo Hospital, VIC","040, Mater Misericordiae Limited,  QLD","042, Redcliffe Hospital, QLD","045, Flinders Medical Centre, SA","046, Liverpool Hospital, NSW","051, The Prince Charles Hospital, QLD","057, Fiona Stanley Hospital, WA","060, Angliss Hospital, VIC","061, Casey Hospital, VIC","079, Prince of Wales Hospital, NSW","080, Concord Hospital, NSW","094, Northeast Health Wangaratta, VIC","101, Royal Adelaide Hospital, SA","107, Lismore Base Hospital, NSW","108, The Alfred Hospital, VIC","111, Nepean Hospital, NSW","113, Launceston Hospital, TAS","115, Calvary Mater Newcastle, NSW","116, Lyell McEwin, SA","117, Toowoomba Hospital, QLD","123, Logan Hospital, QLD","127, Bankstown-Lidcombe Hospital, NSW","128, St John of God Murdoch, WA","131, Wollongong Hospital, NSW","133, Cabrini Hospital, VIC","134, Monash Medical Centre, VIC","136, St John of God Midland, WA","138, Royal Hobart Hospital, TAS","142, Westmead Hospital, NSW","143, The Northern Hospital, VIC","145, Barwon Health, VIC","149, Gold Coast Hospital, QLD","163, St Vincents Hospital Sydney, NSW","165, Maroondah Hospital, VIC","168, Ipswich Hospital, QLD","169, Sir Charles Gairdner Hospital, WA","178, St Vincents Hospital Melbourne, VIC","182, Frankston Hospital, VIC","186, Bundaberg Hospital, QLD","188, Royal Melbourne Hospital, VIC","198, Footscray Hospital, VIC","205, Caboolture Hospital, QLD","210, Campbelltown Hospital, NSW","211, Mildura Base Hospital, VIC","223, Princess Alexandra Hospital, QLD","224, Hervey Bay Hospital, QLD","235, Joondalup Health Campus, WA","249, Bunbury Hospital, WA","258, Warrnambool Base Hospital, VIC","262, Sunshine Hospital, VIC","277, Childrens Hospital at Westmead, NSW","279, Perth Childrens Hospital, WA","281, Royal Childrens Hospital, VIC","283, Sydney Childrens Hospital, Randwick, NSW","284, Adelaide Womens and Childrens Hospital, SA","286, Sunshine Coast University Hospital (ICU and PCCU), QLD","345, Rockingham General Hospital, WA","ISARIC (UK)")
levels(data$corona_ieorres.factor)=c("Yes","No")
levels(data$noncovid___1.factor)=c("Unchecked","Checked")
levels(data$noncovid___2.factor)=c("Unchecked","Checked")
levels(data$noncovid___3.factor)=c("Unchecked","Checked")
levels(data$noncovid___4.factor)=c("Unchecked","Checked")
levels(data$noncovid___9.factor)=c("Unchecked","Checked")
levels(data$noncovid_spec_treat_2.factor)=c("Yes","No")
levels(data$noncovid_complic_2.factor)=c("Yes","No")
levels(data$noncovid_resp_failure_2.factor)=c("Yes","No")
levels(data$noncovid_incidental_2.factor)=c("Yes","No")
levels(data$incidental_diagnosis_2.factor)=c("Cardiovascular","Respiratory","Gastrointestinal","Neurological","Sepsis","Trauma","Metabolic","Hematologic","Renal/Genitourinary","Musculoskeletal/Skin disease","Other")
levels(data$for_non_covid_19_sari_case.factor)=c("Yes","No")
levels(data$corona_ieorres_2.factor)=c("Proven COVID-19 (PCR or RAT positive)","Case managed as COVID-19 despite negative PCR result")
levels(data$proven_spec_treat.factor)=c("Yes","No")
levels(data$proven_resp_failure.factor)=c("Yes","No")
levels(data$proven_complic.factor)=c("Yes","No")
levels(data$proven_incidental.factor)=c("Yes","No")
levels(data$incidental_diagnosis.factor)=c("Cardiovascular","Respiratory","Gastrointestinal","Neurological","Sepsis","Trauma","Metabolic","Hematologic","Renal/Genitourinary","Musculoskeletal/Skin disease","Other")
levels(data$symptoms_epi_travel.factor)=c("YES","NO","Unknown")
levels(data$symptoms_epi_physical.factor)=c("YES","NO","Unknown")
levels(data$symptoms_epi_healthfac.factor)=c("YES","NO","Unknown")
levels(data$symptoms_epi_lab.factor)=c("YES","NO","Unknown")
levels(data$supper_trcntry.factor)=c("Afghanistan","Albania","Algeria","Andorra","Angola","Antigua and Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","The Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei","Bulgaria","Burkina Faso","Burma","Burundi","Cambodia","Cameroon","Canada","Cabo Verde","Central African Republic","Chad","Chile","China","Colombia","Comoros","Republic of the Congo","Costa Rica","Cote dIvoire","Croatia","Cruise Ship","Cuba","Curacao","Cyprus","Czechia","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Fiji","Finland","France","Gabon","Gambia","Georgia","Germany","Ghana","Greece","Grenada","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Holy See","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Jamaica","Japan","Jordan","Kazakhstan","Kenya","Kiribati","South Korea","Kosovo","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Morocco","Mozambique","Namibia","Nauru","Nepal","Netherlands","New Zealand","Nicaragua","Niger","Nigeria","North Korea","Norway","Oman","Pakistan","Palau","Palestinian Territories","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Qatar","Romania","Russia","Rwanda","Saint Kitts and Nevis","Saint Lucia","Saint Vincent and the Grenadines","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Sint Maarten","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Korea","South Sudan","Spain","Sri Lanka","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor-Leste","Togo","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States of America","Uruguay","Uzbekistan","Vanuatu","Venezuela","Vietnam","Yemen","Zambia","Zimbabwe")
levels(data$covid_vac.factor)=c("Yes","No","Unknown")
levels(data$vac_doses.factor)=c("1","2","3","4","5","6")
levels(data$vac_type.factor)=c("Pfizer/BioNTech","Oxford/AstraZeneca","Novavax","Moderna","Other")
levels(data$time_since_vac_dose.factor)=c("within 7 days","7-14 days","more than 14 days")
levels(data$inclusion_criteria_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ethnic___1.factor)=c("Unchecked","Checked")
levels(data$ethnic___2.factor)=c("Unchecked","Checked")
levels(data$ethnic___3.factor)=c("Unchecked","Checked")
levels(data$ethnic___4.factor)=c("Unchecked","Checked")
levels(data$ethnic___5.factor)=c("Unchecked","Checked")
levels(data$ethnic___6.factor)=c("Unchecked","Checked")
levels(data$ethnic___7.factor)=c("Unchecked","Checked")
levels(data$ethnic___8.factor)=c("Unchecked","Checked")
levels(data$ethnic___9.factor)=c("Unchecked","Checked")
levels(data$ethnic___10.factor)=c("Unchecked","Checked")
levels(data$healthwork_empl.factor)=c("Yes","No")
levels(data$healthwork_erterm.factor)=c("N/A","Nurse","Doctor","Allied Health","Working in Microbiology Lab","Other healthcare worker","Childcare worker","Aged care worker","Disability worker","Police","Other")
levels(data$group_residential.factor)=c("N/A","Nursing home / aged care hostel","Group home","Boarding school","Psychiatric institution","Prison","Supported accommodation","Crisis accommodation","Other")
levels(data$age_estimateyearsu.factor)=c("Months","Years")
levels(data$sex.factor)=c("Male","Female","Not specified")
levels(data$postpart_rptestcd.factor)=c("Yes","No")
levels(data$pregyn_rptestcd.factor)=c("Yes","No","Unknown","N/A")
levels(data$pregout_rptestcd.factor)=c("Live birth","Still birth")
levels(data$aplb_lbperf.factor)=c("Yes","No","N/A")
levels(data$aplb_lborres.factor)=c("Positive","Negative")
levels(data$aplb_lbmethod.factor)=c("PCR","Other")
levels(data$apdm_age.factor)=c("Yes","No")
levels(data$apvs_weightu.factor)=c("kg","lbs")
levels(data$apsc_gestout.factor)=c("Term birth ( >= 37wk GA)","Preterm birth (< 37wk GA)","N/A")
levels(data$apsc_brfedind.factor)=c("Yes","No","N/A")
levels(data$apsc_brfedindy.factor)=c("Currently breastfed","Breastfeeding discontinued","N/A")
levels(data$apsc_dvageind.factor)=c("Yes","No","N/A")
levels(data$apsc_vcageind.factor)=c("Yes","No","Unknown")
levels(data$hostdat_icu_admit.factor)=c("Yes","No")
levels(data$previousicu.factor)=c("Yes","No")
levels(data$previousicu_2.factor)=c("Yes","No")
levels(data$hooccur.factor)=c("Yes-facility is a study site","Yes-facility is not a study site","No")
levels(data$subjidcat_transfer.factor)=c("Same as above","Different","Unavailable","Unknown")
levels(data$misc_pims_paed.factor)=c("Yes","No")
levels(data$orig_adm_covid.factor)=c("Yes","No")
levels(data$fever_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$cough_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$coughsput_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$coughhb_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$sorethroat_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$runnynose_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$earpain_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$wheeze_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$chestpain_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$myalgia_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$jointpain_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$fatigue_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$shortbreath_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$lowerchest_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$headache_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$confusion_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$seizures_cecoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$abdopain_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$vomit_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$diarrhoea_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$conjunct_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$rash_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$skinulcers_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$lymp_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$bleed_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$bleed_ceterm_v2.factor)=c("YES","NO/Unknown")
levels(data$lost_ceterm_v2.factor)=c("YES","NO/Unknown")
levels(data$rigor_ceoccur_v2.factor)=c("YES","NO/Unknown")
levels(data$paeds_misc.factor)=c("YES","NO/Unknown")
levels(data$temp_vsorresu.factor)=c("Celsius (C°)","Fahrenheit (F°)")
levels(data$dehydration_vsorres.factor)=c("Yes","No","Unknown")
levels(data$stercap_vsyn.factor)=c("Yes","No")
levels(data$stercap_vsorres.factor)=c("Yes","No","Unknown")
levels(data$oxy_vsorresu.factor)=c("Room air","Oxygen therapy","Unknown")
levels(data$chroniccard_mhyn.factor)=c("YES","NO","N/A")
levels(data$aceinhibitor_myhn.factor)=c("YES","NO","N/A")
levels(data$obesity_mhyn.factor)=c("YES","NO","N/A")
levels(data$chronicpul_mhyn.factor)=c("YES","NO","N/A")
levels(data$diabetiscomp_mhyn.factor)=c("YES","NO","N/A")
levels(data$diabetes_mhyn.factor)=c("YES","NO","N/A")
levels(data$asthma_mhyn.factor)=c("YES","NO","N/A")
levels(data$renal_mhyn.factor)=c("YES","NO","N/A")
levels(data$rheumatology_mhyr.factor)=c("YES","NO","N/A")
levels(data$mildliv_mhyn.factor)=c("YES","NO","N/A")
levels(data$modliver_mhyn.factor)=c("YES","NO","N/A")
levels(data$dementia_mhyn.factor)=c("YES","NO","N/A")
levels(data$malnutrition_mhyn.factor)=c("YES","NO","N/A")
levels(data$chronicneu_mhyn.factor)=c("YES","NO","N/A")
levels(data$malignantneo_mhyn.factor)=c("YES","NO","N/A")
levels(data$other_mhyn.factor)=c("YES","NO","N/A")
levels(data$chronhaemo_mhyn.factor)=c("YES","NO","N/A")
levels(data$aidshiv_mhyn.factor)=c("YES","NO","N/A")
levels(data$chrimm_mhyn.factor)=c("YES","NO","N/A")
levels(data$organ_transpl.factor)=c("Yes","No")
levels(data$smok_curr.factor)=c("Yes","No")
levels(data$smok_comm.factor)=c("Cigarette","Pipe","Cigar","Other")
levels(data$smok_comm_2.factor)=c("Cigarette","Pipe","Cigar","Other")
levels(data$smok_packyear.factor)=c("Yes","No")
levels(data$demographics_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$imv_1.factor)=c("Yes","No")
levels(data$imv2.factor)=c("Yes","No")
levels(data$imv3.factor)=c("Yes","No")
levels(data$ecmo1.factor)=c("Yes","No")
levels(data$ecmo1_specify.factor)=c("Venovenous","Venoarterial")
levels(data$ecmo2.factor)=c("Yes","No")
levels(data$ecmo2_specify.factor)=c("Venovenous","Venoarterial")
levels(data$trache.factor)=c("Yes","No")
levels(data$hfnc.factor)=c("Yes","No")
levels(data$hfnc_2.factor)=c("Yes","No")
levels(data$bipap.factor)=c("Yes","No")
levels(data$bipap_2.factor)=c("Yes","No")
levels(data$cpap.factor)=c("Yes","No")
levels(data$cpap_2.factor)=c("Yes","No")
levels(data$vasop_inot_sup.factor)=c("Yes","No")
levels(data$vasop_inot_sup_2.factor)=c("Yes","No")
levels(data$dialysis.factor)=c("Yes","No")
levels(data$prone_pos.factor)=c("Yes","No")
levels(data$respiratory_treatments_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$mbperf.factor)=c("YES","NO")
levels(data$influ_mbyn.factor)=c("YES - Confirmed","YES - Probable","NO")
levels(data$influ_mbcat___1.factor)=c("Unchecked","Checked")
levels(data$influ_mbcat___2.factor)=c("Unchecked","Checked")
levels(data$influ_mbcat___3.factor)=c("Unchecked","Checked")
levels(data$influ_mbcat___4.factor)=c("Unchecked","Checked")
levels(data$influ_mbcat___5.factor)=c("Unchecked","Checked")
levels(data$influ_mbcat___6.factor)=c("Unchecked","Checked")
levels(data$influ_mbcat___888.factor)=c("Unchecked","Checked")
levels(data$mbspec.factor)=c("Nasal / NP swab","Throat swab","Combined nasal / NP + throat swab","Sputum","Bronchoalveolar Lavage (BAL)","Endotracheal aspirate (ETA)","Urine","Feces / rectal swab","Blood","Other")
levels(data$mbmethod.factor)=c("PCR","Culture","Other")
levels(data$corona_test_num.factor)=c("1","2","3","more than 3")
levels(data$corona_mbcat.factor)=c("YES - Confirmed","YES - Probable","NO")
levels(data$rat_test.factor)=c("Yes","No")
levels(data$corona_mbcaty.factor)=c("SARS-CoV-2 or Novel-CoV","MERS-CoV","Other CoV")
levels(data$mbspec_cr.factor)=c("Nasal / NP swab","Throat swab","Combined nasal / NP + throat swab","Sputum","Bronchoalveolar Lavage (BAL)","Endotracheal aspirate (ETA)","Urine","Feces / rectal swab","Blood","Other")
levels(data$mbmethod_cr.factor)=c("PCR","Culture","Other")
levels(data$variant.factor)=c("Alpha, B.1.1.7 (UK)","Beta, B.1.351 (South Africa)","Gamma, P.1 (Brazil)","Delta, B.1.617.2, (India)","Omicron B.1.1.529 (South Africa)","Omicron B.1.1.529 (SA) Sub-Lineage BA.1","Omicron B.1.1.529 (SA) Sub-Lineage BA.1.1","Omicron B.1.1.529 (SA) Sub-Lineage BA. 2","Omicron B.1.1.529 (SA) Sub-Lineage BA. 4","Omicron B.1.1.529 (SA) Sub-Lineage BA. 5","Other","Unknown")
levels(data$corona_mbcat_2.factor)=c("YES - Confirmed","YES - Probable","NO")
levels(data$corona_mbcaty_2.factor)=c("SARS-CoV-2 or Novel-CoV","MERS-CoV","Other CoV")
levels(data$mbspec_cr_2.factor)=c("Nasal / NP swab","Throat swab","Combined nasal / NP + throat swab","Sputum","Bronchoalveolar Lavage (BAL)","Endotracheal aspirate (ETA)","Urine","Feces / rectal swab","Blood","Other")
levels(data$mbmethod_cr_2.factor)=c("PCR","Culture","Other")
levels(data$corona_mbcat_3.factor)=c("YES - Confirmed","YES - Probable","NO")
levels(data$corona_mbcaty_3.factor)=c("SARS-CoV-2 or Novel-CoV","MERS-CoV","Other CoV")
levels(data$mbspec_cr_3.factor)=c("Nasal / NP swab","Throat swab","Combined nasal / NP + throat swab","Sputum","Bronchoalveolar Lavage (BAL)","Endotracheal aspirate (ETA)","Urine","Feces / rectal swab","Blood","Other")
levels(data$mbmethod_cr_3.factor)=c("PCR","Culture","Other")
levels(data$rsv_mbcat.factor)=c("YES - Confirmed","YES - Probable","NO")
levels(data$mbspec_rsv.factor)=c("Nasal / NP swab","Throat swab","Combined nasal / NP + throat swab","Sputum","Bronchoalveolar Lavage (BAL)","Endotracheal aspirate (ETA)","Urine","Feces / rectal swab","Blood","Other")
levels(data$mbmethod_rsv.factor)=c("PCR","Culture","Other")
levels(data$adeno_mbcat.factor)=c("YES - Confirmed","YES - Probable","NO")
levels(data$mbspec_adeno.factor)=c("Nasal / NP swab","Throat swab","Combined nasal / NP + throat swab","Sputum","Bronchoalveolar Lavage (BAL)","Endotracheal aspirate (ETA)","Urine","Feces / rectal swab","Blood","Other")
levels(data$mbmethod_adeno.factor)=c("PCR","Culture","Other")
levels(data$bact_mborres.factor)=c("YES - Confirmed","NO")
levels(data$mbspec_bac.factor)=c("Nasal / NP swab","Throat swab","Combined nasal / NP + throat swab","Sputum","Bronchoalveolar Lavage (BAL)","Endotracheal aspirate (ETA)","Urine","Feces / rectal swab","Blood","Other")
levels(data$mbmethod_bac.factor)=c("PCR","Culture","Other")
levels(data$other_mbyn.factor)=c("YES - Confirmed","YES - Probable","NO")
levels(data$mbspec_other.factor)=c("Nasal / NP swab","Throat swab","Combined nasal / NP + throat swab","Sputum","Bronchoalveolar Lavage (BAL)","Endotracheal aspirate (ETA)","Urine","Feces / rectal swab","Blood","Other")
levels(data$mbmethod_other.factor)=c("PCR","Culture","Other")
levels(data$clinicalpneu_mborres.factor)=c("YES","NO","Unknown")
levels(data$mbspec_cp.factor)=c("Nasal / NP swab","Throat swab","Combined nasal / NP + throat swab","Sputum","Bronchoalveolar Lavage (BAL)","Endotracheal aspirate (ETA)","Urine","Feces / rectal swab","Blood","Other")
levels(data$mbmethod_cp.factor)=c("PCR","Culture","Other")
levels(data$infectuk_mborres.factor)=c("Yes","N/A")
levels(data$infectious_respiratory_disease_pathogen_testing_di_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$topq_daily.factor)=c("Patient no longer COVID-19","Patient remains COVID-19")
levels(data$readmission_yn.factor)=c("Yes","No")
levels(data$patient_manag.factor)=c("1:1","1:2","1:3","1:4",">1:4","2 nurses : 1 patient")
levels(data$hosp_location.factor)=c("ICU","HDU","Other set up as ICU","Other set up as HDU")
levels(data$covid_contra_icu.factor)=c("Yes","No")
levels(data$first_worklo.factor)=c("Yes","No")
levels(data$daily_pao2_lbspec.factor)=c("Arterial","Venous","Capillary","N/A")
levels(data$daily_pao2_lborresu.factor)=c("kPa","mmHg")
levels(data$daily_pco2_lborresu.factor)=c("kPa","mmHg")
levels(data$daily_nasaloxy_cmtrt.factor)=c("YES","NO")
levels(data$daily_bipap.factor)=c("YES","NO")
levels(data$daily_cpap.factor)=c("YES","NO")
levels(data$daily_noninvasive_prtrt.factor)=c("YES","NO")
levels(data$daily_invasive_prtrt.factor)=c("YES","NO")
levels(data$daily_inotrope_cmyn.factor)=c("YES","NO")
levels(data$daily_dopless5_cmtrt.factor)=c("YES","NO")
levels(data$daily_dop5to15_cmtrt.factor)=c("YES","NO")
levels(data$daily_dopgr15_cmtrt.factor)=c("YES","NO")
levels(data$daily_rrt_cmtrt.factor)=c("YES","NO")
levels(data$daily_neuro_cmtrt.factor)=c("YES","NO")
levels(data$daily_prone_cmtrt.factor)=c("YES","NO")
levels(data$daily_nitritc_cmtrt.factor)=c("YES","NO")
levels(data$daily_ecmo_prtrt.factor)=c("YES","NO")
levels(data$daily_trach_prperf.factor)=c("YES","NO")
levels(data$daily_prperf.factor)=c("YES","NO")
levels(data$daily_other_prtrt_2.factor)=c("Venovenous","Venoarterial")
levels(data$daily_lbperf.factor)=c("Yes","No")
levels(data$daily_plt_lborresu.factor)=c("x 10^9 / L","x 10^3/ L")
levels(data$daily_lactate_lborresu.factor)=c("mmol/L","mg/dL")
levels(data$daily_creat_lborresu.factor)=c("mol","mg/dL","umol/L")
levels(data$xray_prperf.factor)=c("YES","NO","N/A")
levels(data$infiltrates_faorres.factor)=c("YES","NO")
levels(data$infil_quad.factor)=c("1 quadrant","2 quadrants","3 quadrants","4 quadrants","N/A")
levels(data$daily_hb_lborresu.factor)=c("g/L","g/dL")
levels(data$daily_wbc_lborresu.factor)=c("x 10^9 / L","x 10^3/ L")
levels(data$daily_wbc_lborresu_2.factor)=c("x 10^9 / L","x 10^3/ L")
levels(data$daily_glucose_lborresu.factor)=c("mmol/L","mg/dL")
levels(data$daily_bun_lborres_2.factor)=c("exact","less than","more than")
levels(data$daily_bun_lborresu.factor)=c("mmol/L","mg/dL")
levels(data$daily_trp_lborres_3.factor)=c("exact","less than","more than")
levels(data$daily_form_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$viralpneu_ceterm.factor)=c("Yes","No","Unknown")
levels(data$bactpneu_ceterm.factor)=c("Yes","No","Unknown")
levels(data$bacteraemia_ceterm.factor)=c("Yes","No","Unknown")
levels(data$stroke_ceterm.factor)=c("Yes","No","Unknown")
levels(data$arrhythmia_ceterm.factor)=c("Yes","No","Unknown")
levels(data$pbcxr_ceterm.factor)=c("Yes","No","Unknown")
levels(data$cardiacarrest_ceterm.factor)=c("Yes","No","Unknown")
levels(data$pembolism_ceterm.factor)=c("Yes","No","Unknown")
levels(data$dvt_ceterm.factor)=c("Yes","No","Unknown")
levels(data$myocarditis_ceterm.factor)=c("Yes","No","Unknown")
levels(data$mics.factor)=c("Yes","No","Unknown")
levels(data$antiviral_cmyn.factor)=c("Yes","No")
levels(data$antibiotic_cmyn.factor)=c("Yes","No")
levels(data$corticost_cmyn.factor)=c("Yes","No")
levels(data$antibodies_cmyn.factor)=c("Yes","No")
levels(data$jak_inib.factor)=c("Yes","No")
levels(data$trial_drug2.factor)=c("Yes","No")
levels(data$otherdrug1.factor)=c("Yes","No")
levels(data$antiviral_cmtrt.factor)=c("REMDESIVIR","Molnupiravir","Nirmatrelvir+ Ritonavir","Ribavirin","Lopinavir/Ritonvir","Interferon alpha","Interferon beta","Neuraminidase inhibitors","Other")
levels(data$corticost_cmroute___1.factor)=c("Unchecked","Checked")
levels(data$corticost_cmroute___2.factor)=c("Unchecked","Checked")
levels(data$corticost_cmroute___3.factor)=c("Unchecked","Checked")
levels(data$monoclonals_type.factor)=c("Casirivimab plus imdevimab (REGEN-COV)","Sarilumab","Tocilizumab","Sotrovimab","Other")
levels(data$outcm_chest.factor)=c("Yes","No")
levels(data$dsterm_2.factor)=c("Death","Wards","Other hospital","Other rehab","Home")
levels(data$otherhosplocation.factor)=c("Ward","HITH/Virtual ward","ICU")
levels(data$hydroxy_therapy.factor)=c("Yes","No")
levels(data$antiviral_at.factor)=c("Wards","ICU","Both")
levels(data$antiviral_cmtrt_2.factor)=c("Yes","No")
levels(data$antiviral_cmtrt_3.factor)=c("Yes","No")
levels(data$corticost_at.factor)=c("Wards","ICU","Both")
levels(data$monoclonals_at.factor)=c("Wards","ICU","Both")
levels(data$jak_inib_adm.factor)=c("Wards","ICU","Both")
levels(data$covid_study.factor)=c("Yes","No")
levels(data$trial_drug.factor)=c("Yes","No")
levels(data$clinic_op_improv.factor)=c("Yes","Not available")
levels(data$drug_improv_cir.factor)=c("Marked improvement","Minor improvement","Short lived improvement","No improvement","Patient worsened","Not available")
levels(data$drug_improv_dig.factor)=c("Marked improvement","Minor improvement","Short lived improvement","No improvement","Patient worsened","Not available")
levels(data$drug_improv_endo.factor)=c("Marked improvement","Minor improvement","Short lived improvement","No improvement","Patient worsened","Not available")
levels(data$drug_improv_integ.factor)=c("Marked improvement","Minor improvement","Short lived improvement","No improvement","Patient worsened","Not available")
levels(data$drug_improv_imm.factor)=c("Marked improvement","Minor improvement","Short lived improvement","No improvement","Patient worsened","Not available")
levels(data$drug_improv_musc.factor)=c("Marked improvement","Minor improvement","Short lived improvement","No improvement","Patient worsened","Not available")
levels(data$drug_improv_nerv.factor)=c("Marked improvement","Minor improvement","Short lived improvement","No improvement","Patient worsened","Not available")
levels(data$drug_improv_ren.factor)=c("Marked improvement","Minor improvement","Short lived improvement","No improvement","Patient worsened","Not available")
levels(data$drug_improv_repro.factor)=c("Marked improvement","Minor improvement","Short lived improvement","No improvement","Patient worsened","Not available")
levels(data$drug_improv_resp.factor)=c("Marked improvement","Minor improvement","Short lived improvement","No improvement","Patient worsened","Not available")
levels(data$drug_improv_skel.factor)=c("Marked improvement","Minor improvement","Short lived improvement","No improvement","Patient worsened","Not available")
levels(data$icureadmission1.factor)=c("Yes","No")
levels(data$icureadmission2.factor)=c("Yes","No")
levels(data$icureadmission3.factor)=c("Yes","No")
levels(data$dsterm.factor)=c("Discharged home","Transfer to other facility (acute hospital)","Transfer to another facility (rehab)","Palliative discharge","Unknown","Death")
levels(data$outcm_cod.factor)=c("Treatment withdrawn, prognosis poor","Brain injury","Brain death","Arrhythmia","Cardiogenic shock","Distributive (Septic) shock","Hypovolaemic shock","Hypoxic respiratory failure","Metabolic","Other")
levels(data$suppds_qval_v2.factor)=c("Same as before illness","Worse","Better","N/A  /  Unknown")
levels(data$dis_supp_care.factor)=c("Yes","No")
levels(data$support_spec.factor)=c("Oxygen","Renal support","Carer","Other")
levels(data$readmission_icu.factor)=c("Yes","No")
levels(data$readmission_status.factor)=c("Yes","No")
levels(data$outcomes_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$diabetes_sub_analysis_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$diabetes_daily_complete.factor)=c("Incomplete","Unverified","Complete")
