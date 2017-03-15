using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PowerMeter : MonoBehaviour {

	public float max_Meter = 100f;
	public float cur_Meter = 0f;
	public GameObject meterBar;


	void Start () {

		cur_Meter = max_Meter;
		
	}
	

	void Update () {


		if (cur_Meter <= 0) {

			BeginPowerDown ();

		}
		
	}


	void BeginPowerDown(){

		StartCoroutine ("PowerDown");

	}


	IEnumerator PowerDown(){
		yield return new WaitForSeconds (1f);
		SceneManager.LoadScene ("Level01");

	}



	public void descreaseMeter(){

		cur_Meter -= 1.5f;
		float calc_Meter = cur_Meter / max_Meter;
		SetMeterBar (calc_Meter);
	}



	void SetMeterBar(float myMeter){

		meterBar.transform.localScale = new Vector3 (myMeter, meterBar.transform.localScale.y, meterBar.transform.localScale.z);

	}
}
