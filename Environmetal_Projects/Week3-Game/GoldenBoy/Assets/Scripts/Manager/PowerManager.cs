using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PowerManager : MonoBehaviour {



	public float maxpowerMeter;
	public float curPower = 0f;
	private float inc_Power = 0.1f;
	bool hasGain;
	public GameObject PowerBar;



	void Start () {

		maxpowerMeter = curPower;
		hasGain = false;
	


		
	}
	

	void Update () {


		if (curPower >= 0.9f) {

			LoadPowerScene ();
			hasGain = true;
		


		}
		
	}

	void LoadPowerScene(){

		StartCoroutine ("PowerScene");
	



	}

	IEnumerator PowerScene(){
		yield return new WaitForSeconds (2f);
		SceneManager.LoadScene ("PowerUpScene");


	}

	public void ResetPower(){

		StartCoroutine ("StartTheReset");


	}

	IEnumerator StartTheReset(){
		yield return new WaitForSeconds (.5f);
		PowerBar.transform.localScale = new Vector3 (0, PowerBar.transform.localScale.y, PowerBar.transform.localScale.z);
		curPower = 0f;
		maxpowerMeter = 0f;
		hasGain = false;


	}



	public void increasePower(){
		if (!hasGain) {
		curPower += inc_Power;
		float calc_Power = curPower;
		setPowerBar (calc_Power);
		}
	}



	void setPowerBar(float myPower){

		PowerBar.transform.localScale = new Vector3 (myPower, PowerBar.transform.localScale.y,PowerBar.transform.localScale.z);
		maxpowerMeter = curPower;
	}
}
