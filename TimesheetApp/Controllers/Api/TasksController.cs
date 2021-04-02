using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using TimesheetApp.IRepository;
using TimesheetApp.Models;

namespace TimesheetApp.Controllers.Api
{
    [EnableCors("*", "*", "*")]
    public class TasksController : ApiController
    {
        private ITimesheetRepository _repository;

        public TasksController(ITimesheetRepository repository)
        {
            _repository = repository;
        }

        [HttpGet]
        public IEnumerable<Task> GetTasks()
        {
            return _repository.GetAll();
        }

        [HttpPost]
        public Task CreateNewTask(Task task)
        {
            Task newTask = new Task
            {
                id = task.id,
                title = task.title,
                hours = task.hours
            };
            _repository.Add(newTask);

            return newTask;
        }
        
        [HttpGet]
        public IEnumerable<Task> GetTasksForDate(string date)
        {
            DateTime Date = Convert.ToDateTime(date);
            if (Date != null)
                return _repository.GetTasks(Date).ToList();
            else
                return _repository.GetAll();
        }

        [HttpDelete]
        public void DeleteTask(int id)
        {
            Task task = _repository.Get(id);
            if (task == null)
                return;

            _repository.RemoveTask(task);
        }
    }
}
