using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestoryKEy : MonoBehaviour {


	public HasKEy Key;
	 
	// Use this for initialization
	void Start () {

		Key = FindObjectOfType<HasKEy> ();
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	IEnumerator DestoryThis(){

		yield return new WaitForSeconds (1f);

		Destroy (gameObject);




	}



	void OnTriggerEnter2D(Collider2D other){

		if (other.CompareTag ("Player")) {

			Key.StartKey ();
			StartCoroutine (DestoryThis ());





		}


	}



}
