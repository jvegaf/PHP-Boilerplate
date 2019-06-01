<?php
declare(strict_types=1);

namespace Lavegui\AppliationName\Test\unit;

use Lavegui\ApplicationName\Example;
use PHPUnit\Framework\TestCase;

class ExampleTest extends TestCase
{
    /** @test */
    public function example_test(): void
    {
        $example = new Example();

        $this->assertSame('hi!!', $example->hi());
    }
}
