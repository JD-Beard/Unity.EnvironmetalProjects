using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Scroll : MonoBehaviour {

	public float speed = 0;

	private Renderer sprite;
	void Start () {

		sprite = GetComponent<Renderer> ();
		
	}
	

	void Update () {

	
		sprite.material.mainTextureOffset = new Vector2 (Time.time * speed, 0f);
	}
}
