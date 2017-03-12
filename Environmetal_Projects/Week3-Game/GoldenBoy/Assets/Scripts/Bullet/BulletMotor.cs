using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletMotor : MonoBehaviour {


	private Rigidbody2D RB2D;
	public float shootSpeed;


	void Start () {

		RB2D = GetComponent<Rigidbody2D> ();

		
	}
	
	// Update is called once per frame
	void Update () {


		RB2D.velocity = new Vector2 (shootSpeed,RB2D.velocity.y);
		
	}
}
