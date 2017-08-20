<?php


namespace App\Filters;


use Illuminate\Http\Request;

abstract class Filters
{

    protected $request, $builder;
    protected $filters = [];

    /**
     * Filters constructor.
     * @param Request $request
     */
    public function __construct(Request $request)
    {
        $this->request = $request;
    }

    public function apply($builder)
    {
        $this->builder = $builder;
        // We apply our filters to the builder
//        if (!$username = $this->request->by) return $builder;
//        if ($this->request->has('by')) {
//            $this->by($this->request->by);
//        }

       // dd($this->request->only($this->filters));
     //   dd($this->request->all());
//        dd($this->getFilters());

        foreach($this->getFilters() as $filter => $value){
            if(method_exists($this, $filter)){
                $this->$filter($value);
            }

        }

        return $this->builder;
    }

    /**
     * @return array
     */
    public function getFilters()
    {
        //return $this->request->only($this->filters);
        return $this->request->intersect($this->filters);
    }

    /**
     * @param $filter
     * @return bool
     */
//    protected function hasFilter($filter)
//    {
//        return method_exists($this, $filter) && $this->request->has($filter);
//    }
}