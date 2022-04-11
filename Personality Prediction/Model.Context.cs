﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Personality_Prediction
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class PersonalityPredictionEntities : DbContext
    {
        public PersonalityPredictionEntities()
            : base("name=PersonalityPredictionEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AdminRegTbl> AdminRegTbls { get; set; }
        public virtual DbSet<CustRegTbl> CustRegTbls { get; set; }
        public virtual DbSet<PersonalityQuestionTbl> PersonalityQuestionTbls { get; set; }
        public virtual DbSet<UserPQAnswerTbl> UserPQAnswerTbls { get; set; }
        public virtual DbSet<ApptitudeQuestiontbl> ApptitudeQuestiontbls { get; set; }
        public virtual DbSet<Answertbl> Answertbls { get; set; }
        public virtual DbSet<comparevaluetbl> comparevaluetbls { get; set; }
        public virtual DbSet<submittedanswertbl> submittedanswertbls { get; set; }
        public virtual DbSet<userApptitudeAnswer> userApptitudeAnswers { get; set; }
    
        public virtual ObjectResult<AdminLogin_Result> AdminLogin(string email, string password)
        {
            var emailParameter = email != null ?
                new ObjectParameter("Email", email) :
                new ObjectParameter("Email", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("Password", password) :
                new ObjectParameter("Password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<AdminLogin_Result>("AdminLogin", emailParameter, passwordParameter);
        }
    
        public virtual ObjectResult<GetEmmail_Result> GetEmmail(string email)
        {
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetEmmail_Result>("GetEmmail", emailParameter);
        }
    
        public virtual ObjectResult<GetAdminList_Result> GetAdminList()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAdminList_Result>("GetAdminList");
        }
    
        public virtual int DeleteAdmin(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("DeleteAdmin", idParameter);
        }
    
        public virtual ObjectResult<AdminLoginData_Result> AdminLoginData(string email, string password)
        {
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("password", password) :
                new ObjectParameter("password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<AdminLoginData_Result>("AdminLoginData", emailParameter, passwordParameter);
        }
    
        public virtual ObjectResult<CustomerList_Result> CustomerList()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<CustomerList_Result>("CustomerList");
        }
    
        public virtual ObjectResult<CustomerLogin_Result> CustomerLogin(string email, string password)
        {
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("password", password) :
                new ObjectParameter("password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<CustomerLogin_Result>("CustomerLogin", emailParameter, passwordParameter);
        }
    
        public virtual int DeleteCustomers(Nullable<int> cid)
        {
            var cidParameter = cid.HasValue ?
                new ObjectParameter("cid", cid) :
                new ObjectParameter("cid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("DeleteCustomers", cidParameter);
        }
    
        public virtual ObjectResult<GetCustomerEmail_Result> GetCustomerEmail(string email)
        {
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetCustomerEmail_Result>("GetCustomerEmail", emailParameter);
        }
    
        public virtual ObjectResult<LoginAdmin_Result> LoginAdmin(string email, string password)
        {
            var emailParameter = email != null ?
                new ObjectParameter("Email", email) :
                new ObjectParameter("Email", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("Password", password) :
                new ObjectParameter("Password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<LoginAdmin_Result>("LoginAdmin", emailParameter, passwordParameter);
        }
    
        public virtual ObjectResult<DeletePersonalityQuestion_Result> DeletePersonalityQuestion(Nullable<int> pqid)
        {
            var pqidParameter = pqid.HasValue ?
                new ObjectParameter("pqid", pqid) :
                new ObjectParameter("pqid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<DeletePersonalityQuestion_Result>("DeletePersonalityQuestion", pqidParameter);
        }
    
        public virtual ObjectResult<PersonalityQuestionList_Result> PersonalityQuestionList()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<PersonalityQuestionList_Result>("PersonalityQuestionList");
        }
    
        public virtual ObjectResult<GetPQData_Result> GetPQData()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetPQData_Result>("GetPQData");
        }
    
        public virtual ObjectResult<ApptitudeQuestionList_Result> ApptitudeQuestionList()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ApptitudeQuestionList_Result>("ApptitudeQuestionList");
        }
    
        public virtual int DeleteAQ(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("DeleteAQ", idParameter);
        }
    
        public virtual int DeletePQ(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("DeletePQ", idParameter);
        }
    
        public virtual ObjectResult<GetAQData_Result> GetAQData()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAQData_Result>("GetAQData");
        }
    
        public virtual int InsertData(string subans)
        {
            var subansParameter = subans != null ?
                new ObjectParameter("subans", subans) :
                new ObjectParameter("subans", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("InsertData", subansParameter);
        }
    }
}