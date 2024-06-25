package com.User;

public class Medical {
	private int record_id ;
	private String patient_id;
	private String date_recorded;
	private String diagnosis;
	private String treatment_plan;
    private String vital_signs;
	
	public Medical( int record_id , String patient_id, String date_recorded, String diagnosis, String treatment_plan,String vital_signs) {
		
		this.record_id = record_id;
		this.patient_id = patient_id;
		this.date_recorded = date_recorded;
		this.diagnosis =diagnosis;
		this.treatment_plan = treatment_plan;
		this.vital_signs = vital_signs;
		
	}

	public int getRecord_id() {
		return record_id;
	}
	public String getPatient_id() {
		return patient_id;
	}
	public String getDate_recorded() {
		return date_recorded;
	}
	public String getDiagnosis() {
		return diagnosis;
	}
	public String getTreatment_plan() {
		return treatment_plan;
	}
	public String getVital_signs() {
		return vital_signs;
	}
}


