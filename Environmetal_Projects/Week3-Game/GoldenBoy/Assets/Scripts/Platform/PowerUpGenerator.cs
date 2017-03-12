using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PowerUpGenerator : MonoBehaviour {

	public PlatformPooler powerUpPool;
	public float distanceBetweenPowerUp;


	public void SpawnPowerUp(Vector3 startPosition){


		GameObject powerUp1 = powerUpPool.GetPooledObject ();
		powerUp1.transform.position = startPosition;
		powerUp1.SetActive (true);

		GameObject powerUp2 = powerUpPool.GetPooledObject ();
		powerUp2.transform.position = new Vector3(startPosition.x - distanceBetweenPowerUp, startPosition.y, startPosition.z);
		powerUp2.SetActive (true);
	}

}
		