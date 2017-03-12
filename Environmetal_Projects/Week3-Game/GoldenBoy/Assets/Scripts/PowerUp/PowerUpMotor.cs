using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PowerUpMotor : MonoBehaviour {


	public PowerManager pManager;
	public ParticleSystem particle;
	private SoundManager theSoundManager;
	void Start () {

		pManager = FindObjectOfType <PowerManager> ();
		theSoundManager = FindObjectOfType<SoundManager> ();
		
	}
	

	void Update () {
		
	}




	void OnTriggerEnter2D(Collider2D other){

		if (other.CompareTag ("Player")) {

			pManager.increasePower ();
			theSoundManager.PlaySound (0);
			Instantiate (particle, transform.position, Quaternion.identity);
			gameObject.SetActive (false);

		}



	}
}
