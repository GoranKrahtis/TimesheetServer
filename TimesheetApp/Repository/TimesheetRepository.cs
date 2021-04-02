using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using TimesheetApp.IRepository;
using TimesheetApp.Models;

namespace TimesheetApp.Repository
{
    public class TimesheetRepository : ITimesheetRepository
    {
        private DbSet<Task> _tasks;
        private DbContext _context;

        public TimesheetRepository(DbContext context)
        {
            _tasks = context.Set<Task>();
            _context = context;
        }

        public void Add(Task task)
        {
            _tasks.Add(task);
            _context.SaveChanges();
        }

        public Task Get(int id)
        {
            return _tasks.Find(id);
        }

        public IEnumerable<Task> GetAll()
        {
            List<Task> tempList = _tasks.Where(t=>t.date == DateTime.Today).ToList();
            if (tempList != null)
                return tempList;
            return new List<Task>();
        }

        public void RemoveTask(Task task)
        {
            _tasks.Remove(task);
            _context.SaveChanges();
        }
    }
}
