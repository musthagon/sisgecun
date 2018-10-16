<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToNutricionistasTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('nutricionistas', function(Blueprint $table)
		{
			$table->foreign('comedores_id', 'fk_nutricionistas_comedores1')->references('id')->on('comedores')->onUpdate('NO ACTION')->onDelete('NO ACTION');
			$table->foreign('usuarios_id', 'fk_nutricionistas_usuarios1')->references('id')->on('usuarios')->onUpdate('NO ACTION')->onDelete('NO ACTION');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('nutricionistas', function(Blueprint $table)
		{
			$table->dropForeign('fk_nutricionistas_comedores1');
			$table->dropForeign('fk_nutricionistas_usuarios1');
		});
	}

}
