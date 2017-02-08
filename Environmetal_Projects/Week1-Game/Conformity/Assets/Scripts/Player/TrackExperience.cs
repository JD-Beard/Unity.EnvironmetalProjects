using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class TrackExperience : MonoBehaviour {


	bool northEx = false;
	bool southEx = false;
	bool westEx = false;
	bool eastEx = false;
	int QuestDone;
	bool hasKey;
	// Use this for initialization
	void Start () {
		QuestDone = 0;
		hasKey = false;

		
	}
	
	// Update is called once per frame
	void Update () {

		if (QuestDone==4 && hasKey ==false) {

			BeginTheGameover ();
			hasKey = true;
		}
		
	}

	void BeginTheGameover(){

		StartCoroutine (Gameover ());

	}

	IEnumerator Gameover(){
		yield return new WaitForSeconds (5f);
		SceneManager.LoadSceneAsync("Gameover");



	}





	void OnTriggerEnter(Collider other){

		if (other.gameObject.CompareTag ("NorthExperience")) {

			if (!northEx) {
				QuestDone++;
				northEx = true;
				Debug.Log (QuestDone);
			}
		}

		if (other.gameObject.CompareTag ("SouthExperience")) {

			if (!southEx) {
				QuestDone++;
				southEx = true;
				Debug.Log (QuestDone);
			}
		}


		if (other.gameObject.CompareTag ("WestExperience")) {

			if (!westEx) {
				QuestDone++;
				westEx = true;
				Debug.Log (QuestDone);
			}
		}


		if (other.gameObject.CompareTag ("EastExperience")) {

			if (!eastEx) {
				QuestDone++;
				eastEx = true;
				Debug.Log (QuestDone);
			}
		}
	}


//	void OnTriggerStay(Collider other){
//
//
//
//	}
//
//
//	void OnTriggerExit(Collider other){
//
//
//
//	}
}
