control 'SI-04c.01' do
  impact 0.5
  title "internal monitoring capabilities are invoked or monitoring devices are deployed strategically within the system to collect organization-determined essential information;"
  desc <<~DESC
    a. Monitor the system to detect:
      1. Attacks and indicators of potential attacks in accordance with the following monitoring objectives: #{input('si_04_odp_01')} ; and
      2. Unauthorized local, network, and remote connections;
    b. Identify unauthorized use of the system through the following techniques and methods: #{input('si_04_odp_02')};
    c. Invoke internal monitoring capabilities or deploy monitoring devices:
      1. Strategically within the system to collect organization-determined essential information; and
      2. At ad hoc locations within the system to track specific types of transactions of interest to the organization;
    d. Analyze detected events and anomalies;
    e. Adjust the level of system monitoring activity when there is a change in risk to organizational operations and assets, individuals, other organizations, or the Nation;
    f. Obtain legal opinion regarding system monitoring activities; and
    g. Provide #{input('si_04_odp_03')} to #{input('si_04_odp_04')} #{input('si_04_odp_05')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      internal monitoring capabilities are invoked or monitoring devices are deployed strategically within the system to collect organization-determined essential information;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring tools and techniques; continuous monitoring strategy; facility diagram/layout; system design documentation; system monitoring tools and techniques documentation; locations within the system where monitoring devices are deployed; system configuration settings and associated documentation; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system
      TEST: Organizational processes for system monitoring; mechanisms supporting and/or implementing system monitoring capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System monitoring includes external and internal monitoring. External monitoring includes the observation of events occurring at external interfaces to the system. Internal monitoring includes the observation of events occurring within the system. Organizations monitor systems by observing audit activities in real time or by observing other system aspects such as access patterns, characteristics of access, and other actions. The monitoring objectives guide and inform the determination of the events. System monitoring capabilities are achieved through a variety of tools and techniques, including intrusion detection and prevention systems, malicious code protection software, scanning tools, audit record monitoring software, and network monitoring software.

    Depending on the security architecture, the distribution and configuration of monitoring devices may impact throughput at key internal and external boundaries as well as at other locations across a network due to the introduction of network throughput latency. If throughput management is needed, such devices are strategically located and deployed as part of an established organization-wide security architecture. Strategic locations for monitoring devices include selected perimeter locations and near key servers and server farms that support critical applications. Monitoring devices are typically employed at the managed interfaces associated with controls [SC-7](#sc-7) and [AC-17](#ac-17) . The information collected is a function of the organizational monitoring objectives and the capability of systems to support such objectives. Specific types of transactions of interest include Hypertext Transfer Protocol (HTTP) traffic that bypasses HTTP proxies. System monitoring is an integral part of organizational continuous monitoring and incident response programs, and output from system monitoring serves as input to those programs. System monitoring requirements, including the need for specific types of system monitoring, may be referenced in other controls (e.g., [AC-2g](#ac-2_smt.g), [AC-2(7)](#ac-2.7), [AC-2(12)(a)](#ac-2.12_smt.a), [AC-17(1)](#ac-17.1), [AU-13](#au-13), [AU-13(1)](#au-13.1), [AU-13(2)](#au-13.2), [CM-3f](#cm-3_smt.f), [CM-6d](#cm-6_smt.d), [MA-3a](#ma-3_smt.a), [MA-4a](#ma-4_smt.a), [SC-5(3)(b)](#sc-5.3_smt.b), [SC-7a](#sc-7_smt.a), [SC-7(24)(b)](#sc-7.24_smt.b), [SC-18b](#sc-18_smt.b), [SC-43b](#sc-43_smt.b) ). Adjustments to levels of system monitoring are based on law enforcement information, intelligence information, or other sources of information. The legality of system monitoring activities is based on applicable laws, executive orders, directives, regulations, policies, standards, and guidelines.
  GUIDANCE
  tag nist: ['SI-4']
  tag control: 'SI-4'
  tag objective: 'SI-04c.01'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_si_4: true
  tag odp: %w{si_04_odp_01 si_04_odp_02 si_04_odp_03 si_04_odp_04 si_04_odp_05}

  describe 'NIST SP 800-53A Rev 5 objective SI-04c.01' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
