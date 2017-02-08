using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WatchPlayer : MonoBehaviour {


	public Transform player;
	bool hasEnter = false;
	// Use this for initialization
	void Start () {

		player = GameObject.Find ("Player").transform;
		
	}
	
	// Update is called once per frame
	void Update () {

		if (hasEnter) {

			transform.LookAt (player);

		}
		
	}



	void OnTriggerEnter(Collider other){

		if (other.gameObject.CompareTag ("Player")) {

			hasEnter = true;

		}


	}

//	void OnTriggerExit(Collider other){
//
//		if (other.gameObject.CompareTag ("Player")) {
//
//			transform.LookAt (player);
//
//		}
//
//	}
}
