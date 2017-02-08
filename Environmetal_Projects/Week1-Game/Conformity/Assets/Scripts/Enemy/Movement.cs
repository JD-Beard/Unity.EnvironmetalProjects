using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour {


	public Transform pointA;
	public Transform pointB;
	//public Transform Eye;
	//public Transform Player;

	public float percent = 0;
	public float movementSpeed = 20;
	float timer = 2f;

	// Use this for initialization
	void Start () {

		pointA = GameObject.Find ("pointA").transform;
		pointB = GameObject.Find ("pointB").transform;
		//Player = GameObject.Find ("Player").transform;
		
	}
	
	// Update is called once per frame
	void Update () {

	

		timer -= Time.deltaTime;

		if (timer < 0) {


			transform.position = Vector3.Lerp (pointA.position, pointB.position, percent);


			percent = percent + Time.deltaTime / movementSpeed;

		

		}

		if (percent > 1) {

			Destroy (gameObject);
	}
		
	}


//	void OnTriggerEnter(Collider other){
//
//		if (other.gameObject.CompareTag ("Player")) {
//
//
//			Eye.transform.LookAt (Player);
//
//		}
//
//	}
}
