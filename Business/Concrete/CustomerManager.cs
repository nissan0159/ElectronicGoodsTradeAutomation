﻿using Business.Abstract;
using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using System.Collections.Generic;

namespace Business.Concrete
{
    public class CustomerManager : ICustomerService
    {
        private ICustomerDal _customerDal;

        public CustomerManager(ICustomerDal customerDal)
        {
            _customerDal = customerDal;
        }

        public IResult Add(Customer customer)
        {
            _customerDal.Add(customer);
            return new SuccessResult(Messages.Customers.Add(customer.FirstName, customer.LastName));
        }

        public IResult Update(Customer customer)
        {
            var result = _customerDal.Get(c => c.Id == customer.Id);
            _customerDal.Update(result);
            return new SuccessResult(Messages.Customers.Update(customer.FirstName, customer.LastName));
        }

        public IResult Delete(Customer customer)
        {
            var result = _customerDal.Get(c => c.Id == customer.Id);
            _customerDal.Delete(result);
            return new SuccessResult();
        }

        public IDataResult<List<Customer>> GetAll()
        {
            return new SuccessDataResult<List<Customer>>(_customerDal.GetAll());
        }

        public IDataResult<Customer> GetById(int CustomerId)
        {
            return new SuccessDataResult<Customer>(_customerDal.Get(c => c.Id == CustomerId));
        }
    }
}