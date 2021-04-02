using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TimesheetApp.Models;

namespace TimesheetApp.IRepository
{
    public interface ITimesheetRepository
    {
        Task Get(int id);
        IEnumerable<Task> GetAll();
        void RemoveTask(Task task);
        void Add(Task task);
        IEnumerable<Task> GetTasks(DateTime date);
    }
}
