
`define AXI4_TARGET_PORT(PREFIX,AXI4_ADDRESS_WIDTH, AXI4_DATA_WIDTH, AXI4_ID_WIDTH) \
input[(AXI4_ADDRESS_WIDTH-1):0]	PREFIX``AWADDR, \
input[(AXI4_ID_WIDTH-1):0]		PREFIX``AWID, \
input[7:0]						PREFIX``AWLEN, \
input[2:0]						PREFIX``AWSIZE, \
input[1:0]						PREFIX``AWBURST, \
input							PREFIX``AWLOCK, \
input[3:0]						PREFIX``AWCACHE, \
	\
input[2:0]						PREFIX``AWPROT, \
input[3:0]						PREFIX``AWQOS, \
input[3:0]						PREFIX``AWREGION, \
\
input							PREFIX``AWVALID, \
output							PREFIX``AWREADY, \
\
input[(AXI4_DATA_WIDTH-1):0]	PREFIX``WDATA, \
input[(AXI4_DATA_WIDTH/8)-1:0]	PREFIX``WSTRB, \
input							PREFIX``WLAST, \
\
input							PREFIX``WVALID, \
output							PREFIX``WREADY, \
\
output[(AXI4_ID_WIDTH-1):0]		PREFIX``BID, \
output[1:0]						PREFIX``BRESP, \
\
output							PREFIX``BVALID, \
input							PREFIX``BREADY, \
	\
input[(AXI4_ADDRESS_WIDTH-1):0]	PREFIX``ARADDR, \
input[(AXI4_ID_WIDTH-1):0]		PREFIX``ARID,   \
input[7:0]						PREFIX``ARLEN,  \
input[2:0]						PREFIX``ARSIZE, \
input[1:0]						PREFIX``ARBURST, \
input							PREFIX``ARLOCK, \
input[3:0]						PREFIX``ARCACHE, \
\
input[2:0]						PREFIX``ARPROT, \
input[3:0]						PREFIX``ARQOS, \
input[3:0]						PREFIX``ARREGION, \
\
input							PREFIX``ARVALID, \
output							PREFIX``ARREADY, \
\
output[(AXI4_ID_WIDTH-1):0]		PREFIX``RID, \
output[(AXI4_DATA_WIDTH-1):0]	PREFIX``RDATA, \
output[1:0]						PREFIX``RRESP, \
output							PREFIX``RLAST, \
\
output							PREFIX``RVALID, \
input							PREFIX``RREADY

`define AXI4_INITIATOR_PORT(PREFIX,AXI4_ADDRESS_WIDTH, AXI4_DATA_WIDTH, AXI4_ID_WIDTH) \
output[(AXI4_ADDRESS_WIDTH-1):0]	PREFIX``AWADDR, \
output[(AXI4_ID_WIDTH-1):0]		PREFIX``AWID, \
output[7:0]						PREFIX``AWLEN, \
output[2:0]						PREFIX``AWSIZE, \
output[1:0]						PREFIX``AWBURST, \
output							PREFIX``AWLOCK, \
output[3:0]						PREFIX``AWCACHE, \
\
output[2:0]						PREFIX``AWPROT, \
output[3:0]						PREFIX``AWQOS, \
output[3:0]						PREFIX``AWREGION, \
\
output							PREFIX``AWVALID, \
input							PREFIX``AWREADY, \
\
output[(AXI4_DATA_WIDTH-1):0]	PREFIX``WDATA, \
output[(AXI4_DATA_WIDTH/8)-1:0]	PREFIX``WSTRB, \
output							PREFIX``WLAST, \
\
output							PREFIX``WVALID, \
input							PREFIX``WREADY, \
\
input[(AXI4_ID_WIDTH-1):0]		PREFIX``BID, \
input[1:0]						PREFIX``BRESP, \
\
input							PREFIX``BVALID, \
output							PREFIX``BREADY, \
\
output[(AXI4_ADDRESS_WIDTH-1):0]	PREFIX``ARADDR, \
output[(AXI4_ID_WIDTH-1):0]		PREFIX``ARID,   \
output[7:0]						PREFIX``ARLEN,  \
output[2:0]						PREFIX``ARSIZE, \
output[1:0]						PREFIX``ARBURST, \
output							PREFIX``ARLOCK, \
output[3:0]						PREFIX``ARCACHE, \
\
output[2:0]						PREFIX``ARPROT, \
output[3:0]						PREFIX``ARQOS, \
output[3:0]						PREFIX``ARREGION, \
\
output							PREFIX``ARVALID, \
input							PREFIX``ARREADY, \
\
input[(AXI4_ID_WIDTH-1):0]		PREFIX``RID, \
input[(AXI4_DATA_WIDTH-1):0]	PREFIX``RDATA, \
input[1:0]						PREFIX``RRESP, \
input							PREFIX``RLAST, \
\
input							PREFIX``RVALID, \
output							PREFIX``RREADY

`define AXI4_CONNECT(P_PREFIX,W_PREFIX) \
.P_PREFIX``AWADDR(W_PREFIX``AWADDR), \
.P_PREFIX``AWID(W_PREFIX``AWID), \
.P_PREFIX``AWLEN(W_PREFIX``AWLEN), \
.P_PREFIX``AWSIZE(W_PREFIX``AWSIZE), \
.P_PREFIX``AWBURST(W_PREFIX``AWBURST), \
.P_PREFIX``AWLOCK(W_PREFIX``AWLOCK), \
.P_PREFIX``AWCACHE(W_PREFIX``AWCACHE), \
\
.P_PREFIX``AWPROT(W_PREFIX``AWPROT), \
.P_PREFIX``AWQOS(W_PREFIX``AWQOS), \
.P_PREFIX``AWREGION(W_PREFIX``AWREGION), \
\
.P_PREFIX``AWVALID(W_PREFIX``AWVALID), \
.P_PREFIX``AWREADY(W_PREFIX``AWREADY), \
\
.P_PREFIX``WDATA(W_PREFIX``WDATA), \
.P_PREFIX``WSTRB(W_PREFIX``WSTRB), \
.P_PREFIX``WLAST(W_PREFIX``WLAST), \
\
.P_PREFIX``WVALID(W_PREFIX``WVALID), \
.P_PREFIX``WREADY(W_PREFIX``WREADY), \
\
.P_PREFIX``BID(W_PREFIX``BID), \
.P_PREFIX``BRESP(W_PREFIX``BRESP), \
\
.P_PREFIX``BVALID(W_PREFIX``BVALID), \
.P_PREFIX``BREADY(W_PREFIX``BREADY), \
\
.P_PREFIX``ARADDR(W_PREFIX``ARADDR), \
.P_PREFIX``ARID(W_PREFIX``ARID), \
.P_PREFIX``ARLEN(W_PREFIX``ARLEN),  \
.P_PREFIX``ARSIZE(W_PREFIX``ARSIZE), \
.P_PREFIX``ARBURST(W_PREFIX``ARBURST), \
.P_PREFIX``ARLOCK(W_PREFIX``ARLOCK), \
.P_PREFIX``ARCACHE(W_PREFIX``ARCACHE), \
\
.P_PREFIX``ARPROT(W_PREFIX``ARPROT), \
.P_PREFIX``ARQOS(W_PREFIX``ARQOS), \
.P_PREFIX``ARREGION(W_PREFIX``ARREGION), \
\
.P_PREFIX``ARVALID(W_PREFIX``ARVALID), \
.P_PREFIX``ARREADY(W_PREFIX``ARREADY), \
\
.P_PREFIX``RID(W_PREFIX``RID), \
.P_PREFIX``RDATA(W_PREFIX``RDATA), \
.P_PREFIX``RRESP(W_PREFIX``RRESP), \
.P_PREFIX``RLAST(W_PREFIX``RLAST), \
\
.P_PREFIX``RVALID(W_PREFIX``RVALID), \
.P_PREFIX``RREADY(W_PREFIX``RREADY)

`define AXI4_WIRES(PREFIX,AXI4_ADDRESS_WIDTH, AXI4_DATA_WIDTH, AXI4_ID_WIDTH) \
wire[(AXI4_ADDRESS_WIDTH-1):0]	PREFIX``AWADDR; \
wire[(AXI4_ID_WIDTH-1):0]		PREFIX``AWID; \
wire[7:0]						PREFIX``AWLEN; \
wire[2:0]						PREFIX``AWSIZE; \
wire[1:0]						PREFIX``AWBURST; \
wire							PREFIX``AWLOCK; \
wire[3:0]						PREFIX``AWCACHE; \
\
wire[2:0]						PREFIX``AWPROT; \
wire[3:0]						PREFIX``AWQOS; \
wire[3:0]						PREFIX``AWREGION; \
\
wire							PREFIX``AWVALID; \
wire							PREFIX``AWREADY; \
\
wire[(AXI4_DATA_WIDTH-1):0]		PREFIX``WDATA; \
wire[(AXI4_DATA_WIDTH/8)-1:0]	PREFIX``WSTRB; \
wire							PREFIX``WLAST; \
\
wire							PREFIX``WVALID; \
wire							PREFIX``WREADY; \
\
wire[(AXI4_ID_WIDTH-1):0]		PREFIX``BID; \
wire[1:0]						PREFIX``BRESP; \
\
wire							PREFIX``BVALID; \
wire							PREFIX``BREADY; \
\
wire[(AXI4_ADDRESS_WIDTH-1):0]	PREFIX``ARADDR; \
wire[(AXI4_ID_WIDTH-1):0]		PREFIX``ARID; \
wire[7:0]						PREFIX``ARLEN; \
wire[2:0]						PREFIX``ARSIZE; \
wire[1:0]						PREFIX``ARBURST; \
wire							PREFIX``ARLOCK; \
wire[3:0]						PREFIX``ARCACHE; \
\
wire[2:0]						PREFIX``ARPROT; \
wire[3:0]						PREFIX``ARQOS; \
wire[3:0]						PREFIX``ARREGION; \
\
wire							PREFIX``ARVALID; \
wire							PREFIX``ARREADY; \
\
wire[(AXI4_ID_WIDTH-1):0]		PREFIX``RID; \
wire[(AXI4_DATA_WIDTH-1):0]		PREFIX``RDATA; \
wire[1:0]						PREFIX``RRESP; \
wire							PREFIX``RLAST; \
\
wire							PREFIX``RVALID; \
wire							PREFIX``RREADY
