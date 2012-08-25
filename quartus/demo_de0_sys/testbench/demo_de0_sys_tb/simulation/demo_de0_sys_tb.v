// demo_de0_sys_tb.v

// Generated using ACDS version 11.1sp2 259 at 2012.08.24.21:42:51

`timescale 1 ps / 1 ps
module demo_de0_sys_tb (
	);

	wire         demo_de0_sys_inst_clk_bfm_clk_clk;               // demo_de0_sys_inst_clk_bfm:clk -> [demo_de0_sys_inst:clk_clk, demo_de0_sys_inst_reset_bfm:clk]
	wire         demo_de0_sys_inst_reset_bfm_reset_reset;         // demo_de0_sys_inst_reset_bfm:reset -> demo_de0_sys_inst:reset_reset_n
	wire         demo_de0_sys_inst_pll_phasedone_export;          // demo_de0_sys_inst:pll_phasedone_export -> demo_de0_sys_inst_pll_phasedone_bfm:sig_export
	wire         demo_de0_sys_inst_pll_locked_export;             // demo_de0_sys_inst:pll_locked_export -> demo_de0_sys_inst_pll_locked_bfm:sig_export
	wire         demo_de0_sys_inst_pll_areset_bfm_conduit_export; // demo_de0_sys_inst_pll_areset_bfm:sig_export -> demo_de0_sys_inst:pll_areset_export
	wire   [3:0] demo_de0_sys_inst_hd_f;                          // demo_de0_sys_inst:hd_f -> demo_de0_sys_inst_hd_bfm:sig_f
	wire   [3:0] demo_de0_sys_inst_hd_g;                          // demo_de0_sys_inst:hd_g -> demo_de0_sys_inst_hd_bfm:sig_g
	wire   [3:0] demo_de0_sys_inst_hd_d;                          // demo_de0_sys_inst:hd_d -> demo_de0_sys_inst_hd_bfm:sig_d
	wire   [3:0] demo_de0_sys_inst_hd_e;                          // demo_de0_sys_inst:hd_e -> demo_de0_sys_inst_hd_bfm:sig_e
	wire   [3:0] demo_de0_sys_inst_hd_b;                          // demo_de0_sys_inst:hd_b -> demo_de0_sys_inst_hd_bfm:sig_b
	wire   [3:0] demo_de0_sys_inst_hd_c;                          // demo_de0_sys_inst:hd_c -> demo_de0_sys_inst_hd_bfm:sig_c
	wire   [3:0] demo_de0_sys_inst_hd_a;                          // demo_de0_sys_inst:hd_a -> demo_de0_sys_inst_hd_bfm:sig_a
	wire   [3:0] demo_de0_sys_inst_hd_dp;                         // demo_de0_sys_inst:hd_dp -> demo_de0_sys_inst_hd_bfm:sig_dp
	wire         demo_de0_sys_inst_lcd_write_n;                   // demo_de0_sys_inst:lcd_write_n -> demo_de0_sys_inst_lcd_bfm:sig_write_n
	wire         demo_de0_sys_inst_lcd_read_n;                    // demo_de0_sys_inst:lcd_read_n -> demo_de0_sys_inst_lcd_bfm:sig_read_n
	wire  [15:0] demo_de0_sys_inst_lcd_data;                      // [] -> [demo_de0_sys_inst:lcd_data, demo_de0_sys_inst_lcd_bfm:sig_data]
	wire         demo_de0_sys_inst_lcd_rs;                        // demo_de0_sys_inst:lcd_rs -> demo_de0_sys_inst_lcd_bfm:sig_rs
	wire         demo_de0_sys_inst_lcd_reset_n;                   // demo_de0_sys_inst:lcd_reset_n -> demo_de0_sys_inst_lcd_bfm:sig_reset_n
	wire         demo_de0_sys_inst_lcd_cs;                        // demo_de0_sys_inst:lcd_cs -> demo_de0_sys_inst_lcd_bfm:sig_cs
	wire         demo_de0_sys_inst_sdcard_sclk;                   // demo_de0_sys_inst:sdcard_SCLK -> demo_de0_sys_inst_sdcard_bfm:sig_SCLK
	wire         demo_de0_sys_inst_sdcard_ss_n;                   // demo_de0_sys_inst:sdcard_SS_n -> demo_de0_sys_inst_sdcard_bfm:sig_SS_n
	wire         demo_de0_sys_inst_sdcard_mosi;                   // demo_de0_sys_inst:sdcard_MOSI -> demo_de0_sys_inst_sdcard_bfm:sig_MOSI
	wire         demo_de0_sys_inst_sdcard_bfm_conduit_miso;       // demo_de0_sys_inst_sdcard_bfm:sig_MISO -> demo_de0_sys_inst:sdcard_MISO
	wire  [11:0] demo_de0_sys_inst_sw_bfm_conduit_export;         // demo_de0_sys_inst_sw_bfm:sig_export -> demo_de0_sys_inst:sw_export
	wire  [21:0] demo_de0_sys_inst_flash_tcm_address_out;         // demo_de0_sys_inst:flash_tcm_address_out -> flash_0_tcb_translator:in_tcm_address_out
	wire   [0:0] demo_de0_sys_inst_flash_tcm_chipselect_n_out;    // demo_de0_sys_inst:flash_tcm_chipselect_n_out -> flash_0_tcb_translator:in_tcm_chipselect_n_out
	wire  [15:0] demo_de0_sys_inst_flash_tcm_data_out;            // [] -> [demo_de0_sys_inst:flash_tcm_data_out, flash_0_tcb_translator:in_tcm_data_out]
	wire   [0:0] demo_de0_sys_inst_flash_tcm_write_n_out;         // demo_de0_sys_inst:flash_tcm_write_n_out -> flash_0_tcb_translator:in_tcm_write_n_out
	wire   [0:0] demo_de0_sys_inst_flash_tcm_read_n_out;          // demo_de0_sys_inst:flash_tcm_read_n_out -> flash_0_tcb_translator:in_tcm_read_n_out
	wire         rom_0_external_mem_bfm_clk_bfm_clk_clk;          // rom_0_external_mem_bfm_clk_bfm:clk -> rom_0_external_mem_bfm:clk
	wire  [21:0] flash_0_tcb_translator_out_tcm_address_out;      // flash_0_tcb_translator:tcm_address_out -> rom_0_external_mem_bfm:cdt_address
	wire   [0:0] flash_0_tcb_translator_out_tcm_chipselect_n_out; // flash_0_tcb_translator:tcm_chipselect_n_out -> rom_0_external_mem_bfm:cdt_chipselect
	wire  [15:0] flash_0_tcb_translator_out_tcm_data_out;         // [] -> [flash_0_tcb_translator:tcm_data_out, rom_0_external_mem_bfm:cdt_data_io]
	wire   [0:0] flash_0_tcb_translator_out_tcm_write_n_out;      // flash_0_tcb_translator:tcm_write_n_out -> rom_0_external_mem_bfm:cdt_write
	wire   [0:0] flash_0_tcb_translator_out_tcm_read_n_out;       // flash_0_tcb_translator:tcm_read_n_out -> rom_0_external_mem_bfm:cdt_read
	wire         sdram_0_my_partner_clk_bfm_clk_clk;              // sdram_0_my_partner_clk_bfm:clk -> sdram_0_my_partner:clk
	wire         demo_de0_sys_inst_sdr_cs_n;                      // demo_de0_sys_inst:sdr_cs_n -> sdram_0_my_partner:zs_cs_n
	wire   [1:0] demo_de0_sys_inst_sdr_ba;                        // demo_de0_sys_inst:sdr_ba -> sdram_0_my_partner:zs_ba
	wire   [1:0] demo_de0_sys_inst_sdr_dqm;                       // demo_de0_sys_inst:sdr_dqm -> sdram_0_my_partner:zs_dqm
	wire         demo_de0_sys_inst_sdr_cke;                       // demo_de0_sys_inst:sdr_cke -> sdram_0_my_partner:zs_cke
	wire  [11:0] demo_de0_sys_inst_sdr_addr;                      // demo_de0_sys_inst:sdr_addr -> sdram_0_my_partner:zs_addr
	wire         demo_de0_sys_inst_sdr_we_n;                      // demo_de0_sys_inst:sdr_we_n -> sdram_0_my_partner:zs_we_n
	wire         demo_de0_sys_inst_sdr_ras_n;                     // demo_de0_sys_inst:sdr_ras_n -> sdram_0_my_partner:zs_ras_n
	wire         demo_de0_sys_inst_sdr_cas_n;                     // demo_de0_sys_inst:sdr_cas_n -> sdram_0_my_partner:zs_cas_n
	wire  [15:0] demo_de0_sys_inst_sdr_dq;                        // [] -> [demo_de0_sys_inst:sdr_dq, sdram_0_my_partner:zs_dq]

	demo_de0_sys demo_de0_sys_inst (
		.clk_clk                    (demo_de0_sys_inst_clk_bfm_clk_clk),               //           clk.clk
		.reset_reset_n              (demo_de0_sys_inst_reset_bfm_reset_reset),         //         reset.reset_n
		.sdrclk_clk                 (),                                                //        sdrclk.clk
		.pll_phasedone_export       (demo_de0_sys_inst_pll_phasedone_export),          // pll_phasedone.export
		.pll_locked_export          (demo_de0_sys_inst_pll_locked_export),             //    pll_locked.export
		.pll_areset_export          (1'b0), //    pll_areset.export
		.flash_tcm_address_out      (demo_de0_sys_inst_flash_tcm_address_out),         //         flash.tcm_address_out
		.flash_tcm_read_n_out       (demo_de0_sys_inst_flash_tcm_read_n_out),          //              .tcm_read_n_out
		.flash_tcm_write_n_out      (demo_de0_sys_inst_flash_tcm_write_n_out),         //              .tcm_write_n_out
		.flash_tcm_data_out         (demo_de0_sys_inst_flash_tcm_data_out),            //              .tcm_data_out
		.flash_tcm_chipselect_n_out (demo_de0_sys_inst_flash_tcm_chipselect_n_out),    //              .tcm_chipselect_n_out
		.hd_a                       (demo_de0_sys_inst_hd_a),                          //            hd.a
		.hd_b                       (demo_de0_sys_inst_hd_b),                          //              .b
		.hd_c                       (demo_de0_sys_inst_hd_c),                          //              .c
		.hd_d                       (demo_de0_sys_inst_hd_d),                          //              .d
		.hd_e                       (demo_de0_sys_inst_hd_e),                          //              .e
		.hd_f                       (demo_de0_sys_inst_hd_f),                          //              .f
		.hd_g                       (demo_de0_sys_inst_hd_g),                          //              .g
		.hd_dp                      (demo_de0_sys_inst_hd_dp),                         //              .dp
		.lcd_reset_n                (demo_de0_sys_inst_lcd_reset_n),                   //           lcd.reset_n
		.lcd_cs                     (demo_de0_sys_inst_lcd_cs),                        //              .cs
		.lcd_rs                     (demo_de0_sys_inst_lcd_rs),                        //              .rs
		.lcd_data                   (demo_de0_sys_inst_lcd_data),                      //              .data
		.lcd_write_n                (demo_de0_sys_inst_lcd_write_n),                   //              .write_n
		.lcd_read_n                 (demo_de0_sys_inst_lcd_read_n),                    //              .read_n
		.sdr_addr                   (demo_de0_sys_inst_sdr_addr),                      //           sdr.addr
		.sdr_ba                     (demo_de0_sys_inst_sdr_ba),                        //              .ba
		.sdr_cas_n                  (demo_de0_sys_inst_sdr_cas_n),                     //              .cas_n
		.sdr_cke                    (demo_de0_sys_inst_sdr_cke),                       //              .cke
		.sdr_cs_n                   (demo_de0_sys_inst_sdr_cs_n),                      //              .cs_n
		.sdr_dq                     (demo_de0_sys_inst_sdr_dq),                        //              .dq
		.sdr_dqm                    (demo_de0_sys_inst_sdr_dqm),                       //              .dqm
		.sdr_ras_n                  (demo_de0_sys_inst_sdr_ras_n),                     //              .ras_n
		.sdr_we_n                   (demo_de0_sys_inst_sdr_we_n),                      //              .we_n
		.sdcard_MISO                (demo_de0_sys_inst_sdcard_bfm_conduit_miso),       //        sdcard.MISO
		.sdcard_MOSI                (demo_de0_sys_inst_sdcard_mosi),                   //              .MOSI
		.sdcard_SCLK                (demo_de0_sys_inst_sdcard_sclk),                   //              .SCLK
		.sdcard_SS_n                (demo_de0_sys_inst_sdcard_ss_n),                   //              .SS_n
		.sw_export                  (demo_de0_sys_inst_sw_bfm_conduit_export)          //            sw.export
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (50)
	) demo_de0_sys_inst_clk_bfm (
		.clk (demo_de0_sys_inst_clk_bfm_clk_clk)  // clk.clk
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) demo_de0_sys_inst_reset_bfm (
		.reset (demo_de0_sys_inst_reset_bfm_reset_reset), // reset.reset_n
		.clk   (demo_de0_sys_inst_clk_bfm_clk_clk)        //   clk.clk
	);

	altera_conduit_bfm demo_de0_sys_inst_pll_phasedone_bfm (
		.sig_export (demo_de0_sys_inst_pll_phasedone_export)  // conduit.export
	);

	altera_conduit_bfm demo_de0_sys_inst_pll_locked_bfm (
		.sig_export (demo_de0_sys_inst_pll_locked_export)  // conduit.export
	);

	altera_conduit_bfm_0002 demo_de0_sys_inst_pll_areset_bfm (
		.sig_export (demo_de0_sys_inst_pll_areset_bfm_conduit_export)  // conduit.export
	);

	altera_conduit_bfm_0003 demo_de0_sys_inst_hd_bfm (
		.sig_a  (demo_de0_sys_inst_hd_a),  // conduit.a
		.sig_b  (demo_de0_sys_inst_hd_b),  //        .b
		.sig_c  (demo_de0_sys_inst_hd_c),  //        .c
		.sig_d  (demo_de0_sys_inst_hd_d),  //        .d
		.sig_e  (demo_de0_sys_inst_hd_e),  //        .e
		.sig_f  (demo_de0_sys_inst_hd_f),  //        .f
		.sig_g  (demo_de0_sys_inst_hd_g),  //        .g
		.sig_dp (demo_de0_sys_inst_hd_dp)  //        .dp
	);

	altera_conduit_bfm_0004 demo_de0_sys_inst_lcd_bfm (
		.sig_reset_n (demo_de0_sys_inst_lcd_reset_n), // conduit.reset_n
		.sig_cs      (demo_de0_sys_inst_lcd_cs),      //        .cs
		.sig_rs      (demo_de0_sys_inst_lcd_rs),      //        .rs
		.sig_data    (demo_de0_sys_inst_lcd_data),    //        .data
		.sig_write_n (demo_de0_sys_inst_lcd_write_n), //        .write_n
		.sig_read_n  (demo_de0_sys_inst_lcd_read_n)   //        .read_n
	);

	altera_conduit_bfm_0005 demo_de0_sys_inst_sdcard_bfm (
		.sig_MISO (demo_de0_sys_inst_sdcard_bfm_conduit_miso), // conduit.MISO
		.sig_MOSI (demo_de0_sys_inst_sdcard_mosi),             //        .MOSI
		.sig_SCLK (demo_de0_sys_inst_sdcard_sclk),             //        .SCLK
		.sig_SS_n (demo_de0_sys_inst_sdcard_ss_n)              //        .SS_n
	);

	altera_conduit_bfm_0006 demo_de0_sys_inst_sw_bfm (
		.sig_export (demo_de0_sys_inst_sw_bfm_conduit_export)  // conduit.export
	);

	altera_tristate_conduit_bridge_translator flash_0_tcb_translator (
		.in_tcm_address_out      (demo_de0_sys_inst_flash_tcm_address_out),         //  in.tcm_address_out
		.in_tcm_read_n_out       (demo_de0_sys_inst_flash_tcm_read_n_out),          //    .tcm_read_n_out
		.in_tcm_write_n_out      (demo_de0_sys_inst_flash_tcm_write_n_out),         //    .tcm_write_n_out
		.in_tcm_data_out         (demo_de0_sys_inst_flash_tcm_data_out),            //    .tcm_data_out
		.in_tcm_chipselect_n_out (demo_de0_sys_inst_flash_tcm_chipselect_n_out),    //    .tcm_chipselect_n_out
		.tcm_address_out         (flash_0_tcb_translator_out_tcm_address_out),      // out.tcm_address_out
		.tcm_read_n_out          (flash_0_tcb_translator_out_tcm_read_n_out),       //    .tcm_read_n_out
		.tcm_write_n_out         (flash_0_tcb_translator_out_tcm_write_n_out),      //    .tcm_write_n_out
		.tcm_data_out            (flash_0_tcb_translator_out_tcm_data_out),         //    .tcm_data_out
		.tcm_chipselect_n_out    (flash_0_tcb_translator_out_tcm_chipselect_n_out)  //    .tcm_chipselect_n_out
	);

	altera_external_memory_bfm #(
		.USE_CHIPSELECT           (1),
		.USE_WRITE                (1),
		.USE_READ                 (1),
		.USE_OUTPUTENABLE         (0),
		.USE_BEGINTRANSFER        (0),
		.ACTIVE_LOW_BYTEENABLE    (0),
		.ACTIVE_LOW_CHIPSELECT    (1),
		.ACTIVE_LOW_WRITE         (1),
		.ACTIVE_LOW_READ          (1),
		.ACTIVE_LOW_OUTPUTENABLE  (0),
		.ACTIVE_LOW_BEGINTRANSFER (0),
		.ACTIVE_LOW_RESET         (0),
		.CDT_ADDRESS_W            (22),
		.CDT_SYMBOL_W             (8),
		.CDT_NUMSYMBOLS           (2),
		.INIT_FILE                ("altera_external_memory_bfm.hex"),
		.CDT_READ_LATENCY         (0)
	) rom_0_external_mem_bfm (
		.clk               (rom_0_external_mem_bfm_clk_bfm_clk_clk),          //     clk.clk
		.cdt_write         (flash_0_tcb_translator_out_tcm_write_n_out),      // conduit.tcm_write_n_out
		.cdt_read          (flash_0_tcb_translator_out_tcm_read_n_out),       //        .tcm_read_n_out
		.cdt_chipselect    (flash_0_tcb_translator_out_tcm_chipselect_n_out), //        .tcm_chipselect_n_out
		.cdt_address       (flash_0_tcb_translator_out_tcm_address_out),      //        .tcm_address_out
		.cdt_data_io       (flash_0_tcb_translator_out_tcm_data_out),         //        .tcm_data_out
		.cdt_outputenable  (1'b0),                                            // (terminated)
		.cdt_begintransfer (1'b0),                                            // (terminated)
		.cdt_byteenable    (2'b11),                                           // (terminated)
		.cdt_reset         (1'b0)                                             // (terminated)
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (100)
	) rom_0_external_mem_bfm_clk_bfm (
		.clk (rom_0_external_mem_bfm_clk_bfm_clk_clk)  // clk.clk
	);

	altera_sdram_partner_module sdram_0_my_partner (
		.clk      (sdram_0_my_partner_clk_bfm_clk_clk), //     clk.clk
		.zs_dq    (demo_de0_sys_inst_sdr_dq),           // conduit.dq
		.zs_addr  (demo_de0_sys_inst_sdr_addr),         //        .addr
		.zs_ba    (demo_de0_sys_inst_sdr_ba),           //        .ba
		.zs_cas_n (demo_de0_sys_inst_sdr_cas_n),        //        .cas_n
		.zs_cke   (demo_de0_sys_inst_sdr_cke),          //        .cke
		.zs_cs_n  (demo_de0_sys_inst_sdr_cs_n),         //        .cs_n
		.zs_dqm   (demo_de0_sys_inst_sdr_dqm),          //        .dqm
		.zs_ras_n (demo_de0_sys_inst_sdr_ras_n),        //        .ras_n
		.zs_we_n  (demo_de0_sys_inst_sdr_we_n)          //        .we_n
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (100)
	) sdram_0_my_partner_clk_bfm (
		.clk (sdram_0_my_partner_clk_bfm_clk_clk)  // clk.clk
	);

endmodule