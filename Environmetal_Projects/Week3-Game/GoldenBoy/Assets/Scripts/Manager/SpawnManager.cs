using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SpawnManager : MonoBehaviour {
	public GameObject[] Enemy;
	public Transform[] Spawnpoints;
	public float Spawntimer = 10f;

	public float powerUpTimer;




	// Use this for initialization
	void Start () {

		InvokeRepeating ("Spawn", Spawntimer, Spawntimer);  //Repeating my spawn with my timer.

		powerUpTimer = 120f;
	}



	// Update is called once per frame
	void Update () {

		powerUpTimer -= Time.deltaTime;

		if (powerUpTimer < 0) {

			SceneManager.LoadScene ("Level01");

		}




	}

	void Spawn(){

		int spawnIndex = Random.Range (0,Spawnpoints.Length);  //Random spawn my balls using my array.

		int objectIndex = Random.Range (0, Enemy.Length);

		Instantiate(Enemy[objectIndex],Spawnpoints[spawnIndex].position,Spawnpoints[spawnIndex].rotation);





	}
}