.. _cacti_unix_templates:

Percona Linux/Unix Monitoring Template for Cacti
================================================

These templates use ``ss_get_by_ssh.php`` to connect to a server via SSH and
extract standard metrics such as memory usage, number of users, and CPU usage.
This is a good substitute for the standard kinds of system metrics one might
graph via SNMP, when SNMP is not available or not desired.

Installation
============

Once the SSH connection is working, no special installation is
necessary for most of the graphs.

*The disk I/O graphs are special*.  Each graph requires that you specify the
device you want to graph.  For ``/dev/sda``, for example, you should specify
``sda``.  Do not create the graphs through the normal host template method.
Rather, add the graphs to the host manually, one at a time, by clicking "Create
Graph" and selecting the desired graph template.  Edit not only the device name
in the command line, but the name of the graph and data input.  Append the name
of the device.  This will make the items visually distinctive.

See the following screenshot for an example:

.. figure:: images/add_unix_disk_graph.png

You should append ``sda`` in every textbox shown in that screenshot, if you want
to monitor ``/dev/sda``.  Use the device name as it appears in ``/proc/diskstats``.

Sample Graphs
=============

The following sample graphs demonstrate how the data is presented.

.. figure:: images/unix_context_switches.png

   The number of context switches performed by the server.

.. figure:: images/unix_cpu_usage.png

   The CPU usage.

   The example shows a server with two CPUs.  The values will increase by 100 with each added CPU.

.. figure:: images/unix_forks.png

   The number of new processes created by the system.

.. figure:: images/unix_interrupts.png

   The interrupts the system handles.

.. figure:: images/unix_load_average.png

   The system load average.

   If you're used to Cacti's standard load average graph, you might think this
   one has less information.  That is not true; the standard graph that comes
   with Cacti simply shows the same information averaged over three time
   intervals, which is redundant.  RRDTool is natively capable of doing that.

.. figure:: images/unix_memory.png

   The system's memory usage, as reported by the "free" command.

.. figure:: images/unix_number_of_users.png

   The number of users that were logged into the system, as reported by the "w" command.

.. figure:: images/disk_operations.png

   The number of read and write operations completed, and how many reads and writes were merged.

.. figure:: images/disk_sectors_read_written.png

   The number of disk sectors read and written.

.. figure:: images/disk_read_write_time.png

   The amount of time spent reading and writing.

.. figure:: images/disk_elapsed_io_time.png

   The disk utilization.

   This graph shows how much time was spent in disk I/O overall (busy time), and
   how much weighted time was spent doing disk I/O. The latter is a useful
   indication of I/O backlog. The weighted time is the number of requests
   multiplied by the busy time, so if there are 5 requests that take 1 second,
   it is 5 seconds. (If they all happen at the same time, the busy time is only
   1 second.)
