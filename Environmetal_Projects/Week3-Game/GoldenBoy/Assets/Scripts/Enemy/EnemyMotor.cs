using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyMotor : MonoBehaviour {

	private Rigidbody2D RB2D;
	public float shootSpeed;
	public ParticleSystem Spark;
	private AudioSource popSound;
	private SoundManager theSoundManager;




	void Start () {

		RB2D = GetComponent<Rigidbody2D> ();
		theSoundManager = FindObjectOfType<SoundManager> ();


	}


	void Update () {


		RB2D.velocity = new Vector2 (-shootSpeed,RB2D.velocity.y);


	
	}






	void OnTriggerEnter2D(Collider2D other){

		if(other.gameObject.CompareTag("Bullet")){

			theSoundManager.PlaySound (0);
			Instantiate (Spark, transform.position, Quaternion.identity);
			Destroy (gameObject);

		}



		if (other.gameObject.CompareTag ("EDeathWall")) {

			Destroy (gameObject);
		
		}




	}





}