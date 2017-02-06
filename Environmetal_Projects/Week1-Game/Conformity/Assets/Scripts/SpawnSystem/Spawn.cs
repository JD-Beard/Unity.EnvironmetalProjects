using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawn : MonoBehaviour {


	public Transform spawnPoint;
	public GameObject enemies;
	// Use this for initialization
	void Start () {

		InvokeRepeating("spawnEnemies", 3f,3f);
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}



	private void spawnEnemies(){


		Instantiate (enemies, spawnPoint.transform.position, spawnPoint.transform.rotation);
	}
}
