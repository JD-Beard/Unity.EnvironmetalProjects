using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityStandardAssets.Characters.FirstPerson;

public class TrackExperience : MonoBehaviour {


	bool northEx = false;
	bool southEx = false;
	bool westEx = false;
	bool eastEx = false;
	int QuestDone;
	bool hasKey;

	float timer = 3.0f;
	// Use this for initialization
	void Start () {
		QuestDone = 0;
		hasKey = false;

		GameObject.Find("Player").GetComponent<FirstPersonController>().enabled = false;
		
	}
	
	// Update is called once per frame
	void Update () {


		timer -= Time.deltaTime;
		if (timer < 0) {

			TurnOnPlayer ();
		}

		if (QuestDone==4 && hasKey ==false) {

			BeginTheGameover ();
			hasKey = true;
		}
		
	}


	void TurnOnPlayer(){

		GameObject.Find("Player").GetComponent<FirstPersonController>().enabled = true;
	}

	void BeginTheGameover(){

		StartCoroutine (Gameover ());

	}

	IEnumerator Gameover(){
		yield return new WaitForSeconds (20f);
		SceneManager.LoadSceneAsync("Gameover");



	}





//	void OnTriggerEnter(Collider other){
//
//		if (other.gameObject.CompareTag ("NorthExperience")) {
//
//			if (!northEx) {
//				QuestDone++;
//				northEx = true;
//				Debug.Log (QuestDone);
//			}
//		}
//
//		if (other.gameObject.CompareTag ("SouthExperience")) {
//
//			if (!southEx) {
//				QuestDone++;
//				southEx = true;
//				Debug.Log (QuestDone);
//			}
//		}
//
//
//		if (other.gameObject.CompareTag ("WestExperience")) {
//
//			if (!westEx) {
//				QuestDone++;
//				westEx = true;
//				Debug.Log (QuestDone);
//			}
//		}
//
//
//		if (other.gameObject.CompareTag ("EastExperience")) {
//
//			if (!eastEx) {
//				QuestDone++;
//				eastEx = true;
//				Debug.Log (QuestDone);
//			}
//		}
//	}


//	void OnTriggerStay(Collider other){
//
//
//
//	}
//
//
	void OnTriggerExit(Collider other){


		if (other.gameObject.CompareTag ("NorthExperience")) {

			if (!northEx) {
				QuestDone++;
				northEx = true;
				//Debug.Log (QuestDone);
			}
		}

		if (other.gameObject.CompareTag ("SouthExperience")) {

			if (!southEx) {
				QuestDone++;
				southEx = true;
				//Debug.Log (QuestDone);
			}
		}


		if (other.gameObject.CompareTag ("WestExperience")) {

			if (!westEx) {
				QuestDone++;
				westEx = true;
				//Debug.Log (QuestDone);
			}
		}


		if (other.gameObject.CompareTag ("EastExperience")) {

			if (!eastEx) {
				QuestDone++;
				eastEx = true;
				//Debug.Log (QuestDone);
			}
		}



	}
}
