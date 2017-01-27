using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class HasKEy : MonoBehaviour {



	public bool gotKey = false;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}


	IEnumerator FoundKey(){

		yield return new WaitForSeconds (1f);

		gotKey = true;

	}


	public void StartKey(){

		StartCoroutine (FoundKey ());

	}



	void OnCollisionEnter2D(Collision2D other){

		if (other.collider.CompareTag ("Player")) {

			if (gotKey == true) {

				SceneManager.LoadScene ("NextLevel");


			}

		}

	}
}
