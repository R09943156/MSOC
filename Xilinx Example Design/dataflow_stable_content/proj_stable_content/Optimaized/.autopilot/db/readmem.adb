<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>readmem</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>in_strm_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>in_strm.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>out_strm_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>out_strm.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_3">
          <Value>
            <Obj>
              <type>1</type>
              <id>3</id>
              <name>tb</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>tb</originalName>
              <rtlName/>
              <coreName>RAM_2P_BRAM</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>1</if_type>
          <array_size>10</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_4">
          <Value>
            <Obj>
              <type>0</type>
              <id>8</id>
              <name>req_strm_V</name>
              <fileName>example.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>57</lineNumber>
              <contextFuncName>readmem</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>C:\Xilinx\Vivado\2019.2\examples\design\dataflow_stable_content</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>1</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>example.cpp</first>
                        <second>readmem</second>
                      </first>
                      <second>57</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>req_strm.V</originalName>
              <rtlName>req_strm_V_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>17</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>1</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>12</id>
              <name>_ln61</name>
              <fileName>example.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>61</lineNumber>
              <contextFuncName>readmem</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>C:\Xilinx\Vivado\2019.2\examples\design\dataflow_stable_content</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>example.cpp</first>
                        <second>readmem</second>
                      </first>
                      <second>61</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>readmemA_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>4</count>
            <item_version>0</item_version>
            <item>19</item>
            <item>20</item>
            <item>21</item>
            <item>22</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>2</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_6">
          <Value>
            <Obj>
              <type>0</type>
              <id>13</id>
              <name>_ln62</name>
              <fileName>example.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>62</lineNumber>
              <contextFuncName>readmem</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>C:\Xilinx\Vivado\2019.2\examples\design\dataflow_stable_content</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>example.cpp</first>
                        <second>readmem</second>
                      </first>
                      <second>62</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>readmemB_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>7</count>
            <item_version>0</item_version>
            <item>24</item>
            <item>25</item>
            <item>26</item>
            <item>27</item>
            <item>124</item>
            <item>125</item>
            <item>126</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>3</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_7">
          <Value>
            <Obj>
              <type>0</type>
              <id>14</id>
              <name>_ln63</name>
              <fileName>example.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>63</lineNumber>
              <contextFuncName>readmem</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>C:\Xilinx\Vivado\2019.2\examples\design\dataflow_stable_content</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>example.cpp</first>
                        <second>readmem</second>
                      </first>
                      <second>63</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>4</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_8">
          <Value>
            <Obj>
              <type>2</type>
              <id>16</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>1</content>
        </item>
        <item class_id_reference="16" object_id="_9">
          <Value>
            <Obj>
              <type>2</type>
              <id>18</id>
              <name>readmemA</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:readmemA&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_10">
          <Value>
            <Obj>
              <type>2</type>
              <id>23</id>
              <name>readmemB</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:readmemB&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_11">
          <Obj>
            <type>3</type>
            <id>15</id>
            <name>readmem</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>4</count>
            <item_version>0</item_version>
            <item>8</item>
            <item>12</item>
            <item>13</item>
            <item>14</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>12</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_12">
          <id>17</id>
          <edge_type>1</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>8</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_13">
          <id>19</id>
          <edge_type>1</edge_type>
          <source_obj>18</source_obj>
          <sink_obj>12</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_14">
          <id>20</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>12</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_15">
          <id>21</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>12</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_16">
          <id>22</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>12</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_17">
          <id>24</id>
          <edge_type>1</edge_type>
          <source_obj>23</source_obj>
          <sink_obj>13</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_18">
          <id>25</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>13</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_19">
          <id>26</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>13</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_20">
          <id>27</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>13</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>124</id>
          <edge_type>4</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>13</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_22">
          <id>125</id>
          <edge_type>4</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>13</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_23">
          <id>126</id>
          <edge_type>4</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>13</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_24">
        <mId>1</mId>
        <mTag>readmem</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>15</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>22</mMinLatency>
        <mMaxLatency>22</mMaxLatency>
        <mIsDfPipe>1</mIsDfPipe>
        <mDfPipe class_id="23" tracking_level="1" version="0" object_id="_25">
          <port_list class_id="24" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </port_list>
          <process_list class_id="25" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="26" tracking_level="1" version="0" object_id="_26">
              <type>0</type>
              <name>readmemA_U0</name>
              <ssdmobj_id>12</ssdmobj_id>
              <pins class_id="27" tracking_level="0" version="0">
                <count>3</count>
                <item_version>0</item_version>
                <item class_id="28" tracking_level="1" version="0" object_id="_27">
                  <port class_id="29" tracking_level="1" version="0" object_id="_28">
                    <name>in_strm_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id="30" tracking_level="1" version="0" object_id="_29">
                    <type>0</type>
                    <name>readmemA_U0</name>
                    <ssdmobj_id>12</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_30">
                  <port class_id_reference="29" object_id="_31">
                    <name>req_strm_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_29"/>
                </item>
                <item class_id_reference="28" object_id="_32">
                  <port class_id_reference="29" object_id="_33">
                    <name>tb</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_29"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_34">
              <type>0</type>
              <name>readmemB_U0</name>
              <ssdmobj_id>13</ssdmobj_id>
              <pins>
                <count>3</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_35">
                  <port class_id_reference="29" object_id="_36">
                    <name>req_strm_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_37">
                    <type>0</type>
                    <name>readmemB_U0</name>
                    <ssdmobj_id>13</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_38">
                  <port class_id_reference="29" object_id="_39">
                    <name>out_strm_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_37"/>
                </item>
                <item class_id_reference="28" object_id="_40">
                  <port class_id_reference="29" object_id="_41">
                    <name>tb</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_37"/>
                </item>
              </pins>
            </item>
          </process_list>
          <channel_list class_id="31" tracking_level="0" version="0">
            <count>1</count>
            <item_version>0</item_version>
            <item class_id="32" tracking_level="1" version="0" object_id="_42">
              <type>1</type>
              <name>req_strm_V</name>
              <ssdmobj_id>8</ssdmobj_id>
              <ctype>0</ctype>
              <depth>4</depth>
              <bitwidth>32</bitwidth>
              <source class_id_reference="28" object_id="_43">
                <port class_id_reference="29" object_id="_44">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_29"/>
              </source>
              <sink class_id_reference="28" object_id="_45">
                <port class_id_reference="29" object_id="_46">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_37"/>
              </sink>
            </item>
          </channel_list>
          <net_list class_id="33" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </net_list>
        </mDfPipe>
      </item>
    </cdfg_regions>
    <fsm class_id="34" tracking_level="1" version="0" object_id="_47">
      <states class_id="35" tracking_level="0" version="0">
        <count>23</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="1" version="0" object_id="_48">
          <id>1</id>
          <operations class_id="37" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="1" version="0" object_id="_49">
              <id>8</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_50">
              <id>12</id>
              <stage>12</stage>
              <latency>12</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_51">
          <id>2</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_52">
              <id>12</id>
              <stage>11</stage>
              <latency>12</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_53">
          <id>3</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_54">
              <id>12</id>
              <stage>10</stage>
              <latency>12</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_55">
          <id>4</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_56">
              <id>12</id>
              <stage>9</stage>
              <latency>12</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_57">
          <id>5</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_58">
              <id>12</id>
              <stage>8</stage>
              <latency>12</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_59">
          <id>6</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_60">
              <id>12</id>
              <stage>7</stage>
              <latency>12</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_61">
          <id>7</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_62">
              <id>12</id>
              <stage>6</stage>
              <latency>12</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_63">
          <id>8</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_64">
              <id>12</id>
              <stage>5</stage>
              <latency>12</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_65">
          <id>9</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_66">
              <id>12</id>
              <stage>4</stage>
              <latency>12</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_67">
          <id>10</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_68">
              <id>12</id>
              <stage>3</stage>
              <latency>12</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_69">
          <id>11</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_70">
              <id>12</id>
              <stage>2</stage>
              <latency>12</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_71">
          <id>12</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_72">
              <id>12</id>
              <stage>1</stage>
              <latency>12</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_73">
          <id>13</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_74">
              <id>13</id>
              <stage>11</stage>
              <latency>11</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_75">
          <id>14</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_76">
              <id>13</id>
              <stage>10</stage>
              <latency>11</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_77">
          <id>15</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_78">
              <id>13</id>
              <stage>9</stage>
              <latency>11</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_79">
          <id>16</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_80">
              <id>13</id>
              <stage>8</stage>
              <latency>11</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_81">
          <id>17</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_82">
              <id>13</id>
              <stage>7</stage>
              <latency>11</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_83">
          <id>18</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_84">
              <id>13</id>
              <stage>6</stage>
              <latency>11</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_85">
          <id>19</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_86">
              <id>13</id>
              <stage>5</stage>
              <latency>11</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_87">
          <id>20</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_88">
              <id>13</id>
              <stage>4</stage>
              <latency>11</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_89">
          <id>21</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_90">
              <id>13</id>
              <stage>3</stage>
              <latency>11</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_91">
          <id>22</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_92">
              <id>13</id>
              <stage>2</stage>
              <latency>11</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_93">
          <id>23</id>
          <operations>
            <count>9</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_94">
              <id>4</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_95">
              <id>5</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_96">
              <id>6</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_97">
              <id>7</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_98">
              <id>9</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_99">
              <id>10</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_100">
              <id>11</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_101">
              <id>13</id>
              <stage>1</stage>
              <latency>11</latency>
            </item>
            <item class_id_reference="38" object_id="_102">
              <id>14</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="39" tracking_level="0" version="0">
        <count>22</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="1" version="0" object_id="_103">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="41" tracking_level="0" version="0">
            <id>-1</id>
            <sop class_id="42" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="43" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_104">
          <inState>2</inState>
          <outState>3</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_105">
          <inState>3</inState>
          <outState>4</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_106">
          <inState>4</inState>
          <outState>5</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_107">
          <inState>5</inState>
          <outState>6</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_108">
          <inState>6</inState>
          <outState>7</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_109">
          <inState>7</inState>
          <outState>8</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_110">
          <inState>8</inState>
          <outState>9</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_111">
          <inState>9</inState>
          <outState>10</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_112">
          <inState>10</inState>
          <outState>11</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_113">
          <inState>11</inState>
          <outState>12</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_114">
          <inState>12</inState>
          <outState>13</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_115">
          <inState>13</inState>
          <outState>14</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_116">
          <inState>14</inState>
          <outState>15</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_117">
          <inState>15</inState>
          <outState>16</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_118">
          <inState>16</inState>
          <outState>17</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_119">
          <inState>17</inState>
          <outState>18</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_120">
          <inState>18</inState>
          <outState>19</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_121">
          <inState>19</inState>
          <outState>20</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_122">
          <inState>20</inState>
          <outState>21</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_123">
          <inState>21</inState>
          <outState>22</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_124">
          <inState>22</inState>
          <outState>23</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="44" tracking_level="1" version="0" object_id="_125">
      <dp_component_resource class_id="45" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="46" tracking_level="0" version="0">
          <first>readmemA_U0 (readmemA)</first>
          <second class_id="47" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="48" tracking_level="0" version="0">
              <first>FF</first>
              <second>88</second>
            </item>
            <item>
              <first>LUT</first>
              <second>237</second>
            </item>
          </second>
        </item>
        <item>
          <first>readmemB_U0 (readmemB)</first>
          <second>
            <count>2</count>
            <item_version>0</item_version>
            <item>
              <first>FF</first>
              <second>365</second>
            </item>
            <item>
              <first>LUT</first>
              <second>862</second>
            </item>
          </second>
        </item>
        <item>
          <first>start_for_readmembkb_U (start_for_readmembkb)</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>ap_idle ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>req_strm_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>4</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>32</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>128</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>44</second>
            </item>
          </second>
        </item>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>readmemA_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>readmemB_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_readmembkb_U</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="49" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="50" tracking_level="0" version="0">
          <first>readmemA_U0 (readmemA)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>12</item>
          </second>
        </item>
        <item>
          <first>readmemB_U0 (readmemB)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>13</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>req_strm_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>64</item>
          </second>
        </item>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="51" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>8</first>
        <second class_id="53" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>12</first>
        <second>
          <first>0</first>
          <second>11</second>
        </second>
      </item>
      <item>
        <first>13</first>
        <second>
          <first>12</first>
          <second>10</second>
        </second>
      </item>
      <item>
        <first>14</first>
        <second>
          <first>22</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="54" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>15</first>
        <second class_id="56" tracking_level="0" version="0">
          <first>0</first>
          <second>22</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="57" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="58" tracking_level="1" version="0" object_id="_126">
        <region_name>readmem</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>15</item>
        </basic_blocks>
        <nodes>
          <count>11</count>
          <item_version>0</item_version>
          <item>4</item>
          <item>5</item>
          <item>6</item>
          <item>7</item>
          <item>8</item>
          <item>9</item>
          <item>10</item>
          <item>11</item>
          <item>12</item>
          <item>13</item>
          <item>14</item>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>16</region_type>
        <interval>0</interval>
        <pipe_depth>0</pipe_depth>
      </item>
    </regions>
    <dp_fu_nodes class_id="59" tracking_level="0" version="0">
      <count>3</count>
      <item_version>0</item_version>
      <item class_id="60" tracking_level="0" version="0">
        <first>42</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>8</item>
        </second>
      </item>
      <item>
        <first>46</first>
        <second>
          <count>11</count>
          <item_version>0</item_version>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
        </second>
      </item>
      <item>
        <first>55</first>
        <second>
          <count>12</count>
          <item_version>0</item_version>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="62" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="63" tracking_level="0" version="0">
        <first>req_strm_V_fu_42</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>8</item>
        </second>
      </item>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>grp_readmemA_fu_55</first>
        <second>
          <count>12</count>
          <item_version>0</item_version>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
          <item>12</item>
        </second>
      </item>
      <item>
        <first>grp_readmemB_fu_46</first>
        <second>
          <count>11</count>
          <item_version>0</item_version>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
          <item>13</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="64" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>1</count>
      <item_version>0</item_version>
      <item>
        <first>64</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>8</item>
        </second>
      </item>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>1</count>
      <item_version>0</item_version>
      <item>
        <first>req_strm_V_reg_64</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>8</item>
        </second>
      </item>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="65" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="66" tracking_level="0" version="0">
        <first>in_strm_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>12</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>out_strm_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>13</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="67" tracking_level="0" version="0">
      <count>3</count>
      <item_version>0</item_version>
      <item class_id="68" tracking_level="0" version="0">
        <first>1</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>2</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>3</first>
        <second>RAM_2P_BRAM</second>
      </item>
    </port2core>
    <node2core>
      <count>1</count>
      <item_version>0</item_version>
      <item>
        <first>8</first>
        <second>FIFO</second>
      </item>
    </node2core>
  </syndb>
</boost_serialization>
