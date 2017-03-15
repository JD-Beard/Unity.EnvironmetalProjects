using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyBullet : MonoBehaviour {


	//public ParticleSystem Spark;
	// Use this for initialization
	void Start () {
		Destroy (gameObject, 6f);
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}


	void OnTriggerEnter2D(Collider2D other){


		if (other.gameObject.CompareTag ("Wall") || other.gameObject.CompareTag("Enemy")) {

			//Instantiate (Spark, transform.position, Quaternion.identity);
			Destroy (gameObject);

		}

	}
}
