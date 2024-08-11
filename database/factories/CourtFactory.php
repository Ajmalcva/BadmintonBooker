<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Court>
 */
class CourtFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->unique()->company, 
            'nameShort' => $this->faker->lexify('???'), 
            'price' => $this->faker->randomFloat(2, 50, 500), 
            'location' => $this->faker->address, 
            'image' => $this->faker->imageUrl(640, 480, 'sports', true), 
            'startTime' => $this->randomTimeBetween('06:00:00', '08:00:00'),
            'endTime' => $this->randomTimeBetween('22:00:00', '24:00:00')
        ];
    }
    protected function randomTimeBetween($start, $end): string
    {
        $startHour = (int)date('H', strtotime($start));
        $endHour = (int)date('H', strtotime($end));

        $randomHour = rand($startHour, $endHour);
        
        return sprintf('%02d:00:00', $randomHour);
    }
    
}
