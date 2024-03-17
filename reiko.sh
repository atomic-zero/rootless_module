#!/system/bin/sh
echo ""
echo " ____  _____ ___ _  _____    ____  _______     __"
echo "|  _ \| ____|_ _| |/ / _ \  |  _ \| ____\ \   / /"
echo "| |_) |  _|  | || ' / | | | | | | |  _|  \ \ / /" 
echo "|  _ <| |___ | || . \ |_| | | |_| | |___  \ V /"  
echo "|_| \_\_____|___|_|\_\___/  |____/|_____|  \_/"
echo ""
echo " ► Github: reiko_dev"
echo " ► Tiktok: ezekael"
echo " ► Telegram: https://t.me/hackersdecipher"
echo ""
expiration_date="2024-4-15"
current_date=$(date +%Y-%m-%d)
if [ "$current_date" \> "$expiration_date" ]; then
    echo "This script has expired."
    echo "Please contact the script"
    echo "provider for a new version."
    sleep 4s
am start -a android.intent.action.VIEW -d "https://t.me/hackersdecipher" > /dev/null 2>&1 
    exit 1
fi
sleep 1s
echo " [+] 𝗥𝗢𝗢𝗧𝗟𝗘𝗦𝗦 𝗠𝗢𝗗𝗨𝗟𝗘 [+]"
echo ""
echo " [!] Use this script at your own risk."
echo "     I am not responsible for any issues"
echo "     or damages in your device." 
echo "     Proceed with caution!"
echo ""
sleep 4s
echo " [+] 𝗗𝗘𝗩𝗜𝗖𝗘 [+] " 
#Rendering Tweak
setprop debug.hwui.renderer vulkan
sleep 1s
echo " ► Name: $(getprop ro.product.model) " 
sleep 0.5s
echo " ► Renderer: $(getprop debug.hwui.renderer) "
sleep 0.5s
echo " ► GPU: $(getprop ro.hardware.egl) " 
sleep 0.5s
echo " ► Chipset: $(getprop ro.board.platform) " 
sleep 0.5s
echo " ► Model: $(getprop ro.build.product) " 
sleep 0.5s
echo " ► Kernel: $(uname -r) " 
sleep 0.5s
echo " ► Android: $(getprop ro.build.version.release) " 
sleep 0.5s
echo " ► SDK: $(getprop ro.build.version.sdk) " 
sleep 0.5s
echo " ► Arch: $(getprop ro.product.cpu.abi) "
echo ""
#Debug Tweaks Performance Boost
settings_debug() {
setprop debug.atrace.tags.enableflags 0
setprop debug.composition.frame_interval 16
setprop debug.egl.hw 0
setprop debug.egl.logging false
setprop debug.hwui.commit_delay_ms 0
setprop debug.hwui.overdraw false
setprop debug.hwui.max_frame_lag 10
setprop debug.mdpcomp.logs 0
setprop debug.hwui.use_partial_updates true
setprop debug.hwui.disable_offset true
setprop debug.hwui.enable_gl_drawing_cache 1
setprop debug.hwui.disable_draw_reorder true
setprop debug.forground_task.boost true
setprop debug.duration_tap 50
setprop debug.slide.duration 10
setprop debug.show_refresh_rate_overlay_spinner 7236
setprop debug.sf.max_igbp_list_size 7236
setprop debug.hw.hwperfmode
setprop debug.composition.type mdp
setprop debug.composition.type2 gpu
setprop debug.game.graphics.engine.type skia-mtengine
setprop debug.game.cpu.engine.type turbo
setprop debug.game.graphics.engine.type skia-mtengine
setprop debug.skia.gpu_shader_cache_path data/shader_cache
setprop debug.game.shader.technique.type compress-pack
setprop debug.skia.canvas.uniform.shader.type color-matrix
setprop debug.game.rs.engine.type performance
setprop debug.game.drawcall.engine.type deferred
setprop debug.game.shaderops.engine.type speculate_pack
setprop debug.game.frametime.engine.type multicore_load
setprop debug.game.fps.engine.type max-perf
setprop debug.game.texture.compression.type bc4
setprop debug.game.occlusionquery.type cuda
setprop debug.game.shadow.technique.type pcf2×2
setprop debug.game.sun.imposter.type screen-aligned
setprop debug.game.texture.filter.engine.type compile-mipmap
setprop debug.game peformance
setprop debug.game.disable_power_opt true
setprop debug.thermalservice.override.lock.status 0
setprop debug.game.jt_init_one_shot 1
setprop debug.gralloc.gfx.type ion-pack
setprop debug.hwui.use_smart_batching true
setprop debug.hwui.draw.texture.type surfacetexture
setprop debug.hwui.renderer.texture surfacetexture
setprop debug.hwui.thread_scheduler.type performance
setprop debug.renderthread.wakeup_ms 0
setprop debug.dls.weight 100
setprop debug.power.suspend_supported true
setprop debug.hwui.ffpe true
setprop debug.hwui.layer_cache_key_hashing true
setprop debug.hwui.renderengine.backend skiagpu
setprop debug.big_cpu_count 8
setprop debug.big_core_threshold 30
setprop debug.cpu_big_cluster_suspended 0
setprop debug.cpu_core_ctl_max_cores 8
setprop debug.cpu_core_ctl_offline_delay_ms 500
setprop debug.sf.early_phase_offset_ns 500000
setprop debug.sf.early_app_phase_offset_ns 500000
setprop debug.sf.early_gl_phase_offset_ns 3000000
setprop debug.sf.early_gl_app_phase_offset_ns 15000000
setprop debug.sf.high_fps_early_phase_offset_ns 6100000
setprop debug.sf.high_fps_late_app_phase_offset_ns 100000
setprop debug.sf.phase_offset_threshold_for_next_vsync_ns 6100000
setprop debug.sf.showupdates 0 
setprop debug.sf.showcpu 0 
setprop debug.sf.showbackground 0 
setprop debug.sf.showfps 0
setprop debug.thermal_zone.gpu_threshold_temp 95
setprop debug.thermal_zone.cpu_threshold_temp 90
setprop debug.thermal_zone.display_threshold_temp 80
setprop debug.thermal_zone.camera_hotplug_control 2
setprop debug.thermal_zone.battery_threshold_temp 60
setprop debug.thermal_zone.camera_threshold_temp 85
setprop debug.thermal_zone.cpu_hotplug_control 2
setprop debug.thermal_zone.gpu_hotplug_control 2
cmd package compile -m everything --secondary-dex -f com.android.systemui
cmd package compile -m everything --check-prof true -f com.android.systemui
cmd package compile -m everything --secondary-dex com.android.systemui
cmd package compile -m everything --check-prof true com.android.systemui
cmd package force-dex-opt com.android.systemui
cmd package reconcile-secondary-dex-files com.android.systemui
cmd package compile -m everything reconcile-secondary-dex-files -f com.android.systemui
cmd package compile -m everything reconcile-secondary-dex-files com.android.systemui
cmd package compile -m everything --compile-layouts -f com.android.systemui
cmd package compile -m everything --compile-layouts com.android.systemui
cmd package compile -r shared --secondary-dex -f com.android.systemui
cmd package compile -r shared --check-prof true -f com.android.systemui
cmd package compile -r shared --secondary-dex com.android.systemui
cmd package compile -r shared --check-prof true com.android.systemui
cmd package reconcile-secondary-dex-files com.android.systemui
cmd package compile -r shared reconcile-secondary-dex-files -f com.android.systemui
cmd package compile -r shared reconcile-secondary-dex-files com.android.systemui
cmd package compile -r shared --compile-layouts -f com.android.systemui
cmd package compile -r shared --compile-layouts com.android.systemui
cmd package compile -r core-app --secondary-dex -f com.android.systemui
cmd package compile -r core-app --check-prof true -f com.android.systemui
cmd package compile -r core-app --secondary-dex com.android.systemui
cmd package compile -r core-app --check-prof true com.android.systemui
cmd package force-dex-opt com.android.systemui
cmd package reconcile-secondary-dex-files com.android.systemui
cmd package compile -r core-app reconcile-secondary-dex-files -f com.android.systemui
cmd package compile -r core-app reconcile-secondary-dex-files com.android.systemui
cmd package compile -r core-app --compile-layouts -f com.android.systemui
cmd package compile -r core-app --compile-layouts com.android.systemui
cmd thermalservice override-status 0
cmd power set-fixed-performance-mode-enabled true
setprop debug.qti.am.resource.type super-large
setprop debug.hwui.renderer.buffer dynamic-loadmulticore
setprop debug.dex2oat.threads 4
setprop debug.gyro.type dmp
setprop debug.cpu_core_ctl_active 1
setprop debug.game.max.cpu.proc 8
setprop debug.cpu_core_ctrl_hispeed_load 90
setprop debug.cpu_core_ctrl_related_cpus 0,1,2,3,4
setprop debug.hwui.target_power_time_percent 100
setprop debug.hwui.target_cpu_time_percent 100
setprop debug.hwui.target_gpu_time_percent 100
setprop debug.dev.ssrm.turbo true
setprop debug.hwui.disabledither true
setprop debug.rs.precision rs_fp_full
setprop debug.performance.force true
setprop debug.disable.computedata true
setprop debug.rs.max-threads 8
setprop debug.rs.min-threads 8
setprop debug.performance.tuning 1
setprop debug.qsg_renderer 1
setprop debug.hwui.fps_divisor -1
setprop debug.redroid.fps 120
setprop debug.renderthread.reduceopstasksplitting true
setprop debug.renderer.process compound
setprop debug.hwui.disable_draw_defer true
setprop debug.hwui.use_hint_manager true
setprop debug.cpu.input_boost
setprop debug.mtk.performance.tuning 1
setprop debug.mtk.chiptuning.enable 1
setprop debug.mtk.hu.enable 1
setprop debug.mtk.vsync.swapinterval 1
setprop debug.mtk.gpu.dcvs.level 7
setprop debug.mtk.gpuframecontrol 1
setprop debug.mtk.gpu.mode 1
setprop debug.mtkperformanceperfmode 4
setprop debug.mtk.skia.enabled 1
setprop debug.hwui.disable_fbo_cache true
setprop debug.hwui.disable_gpu_cache true
setprop debug.hwui.disable_picture_cache true
setprop debug.hwui.disable_text_cache true
setprop debug.hwui.disable_path_cache true
setprop debug.hwui.disable_asset_cache true
setprop debug.hwui.disable_image_cache
setprop debug.hwui.layer_cache_size 128
setprop debug.hwui.path_cache_size 16
setprop debug.hwui.drop_shadow_cache_size 12
setprop debug.hwui.gradient_cache_size 4
setprop debug.hwui.enable_texture_atlas true
setprop debug.hwui.enable_overdraw_detection true
setprop debug.hwui.show_overdraw true
setprop debug.hwui.overdraw_color 0xFFFF0000
setprop debug.hwui.show_overdraw true
setprop debug.hwui.overdraw_color 0xFFFF0000
setprop debug.hwui.use_buffer_age false
setprop debug.hwui.disable_vsync true
setprop debug.hwui.render_dirty_regions false
setprop debug.performance.profile 1
setprop debug.performance.tuning 1
setprop debug.graphics.enable_tracing 1
setprop debug.hwui.renderer monodraw
setprop debug.hwui.use_buffer_age false
setprop debug.hwui.disable_vsync true
setprop debug.hwui.layer_cache_size 64
setprop debug.hwui.path_cache_size 8
setprop debug.hwui.drop_shadow_cache_size 6
setprop debug.hwui.gradient_cache_size 2
setprop debug.performance.profile 1
setprop debug.performance.tuning 1
setprop debug.graphics.enable_tracing 1
setprop debug.hwui.use_buffer_age false
setprop debug.hwui.disable_vsync true
setprop debug.hwui.render_dirty_regions false
setprop debug.hwui.texture_cache_size 128
setprop debug.hwui.layer_cache_size 64
setprop debug.hwui.path_cache_size 8
setprop debug.hwui.drop_shadow_cache_size 6
setprop debug.hwui.gradient_cache_size 2
setprop debug.hwui.enable_texture_atlas true
setprop debug.hwui.enable_overdraw_detection true
setprop debug.hwui.show_overdraw true
setprop debug.hwui.overdraw_color 0xFFFF0000
setprop debug.hwui.use_buffer_age false
setprop debug.hwui.disable_vsync true
setprop debug.hwui.render_dirty_regions false
setprop debug.hwui.texture_cache_size 256
setprop debug.hwui.layer_cache_size 128
setprop debug.hwui.path_cache_size 16
setprop debug.hwui.drop_shadow_cache_size 12
setprop debug.hwui.gradient_cache_size 4
setprop debug.hwui.enable_texture_atlas true
setprop debug.hwui.enable_overdraw_detection true
setprop debug.hwui.show_overdraw true
setprop debug.hwui.overdraw_color 0xFFFF0000
setprop debug.performance.tuning 1
setprop debug.performance.profile 1
setprop debug.ram.tuning true
setprop debug.ram.disable_kernel_idle true
setprop debug.ram.disable_kernel_throttling true
setprop debug.performance.disable_gpu_preemption true
setprop debug.performance.disable_responsiveness_checks true
setprop debug.performance.disable_ramp_up_on_fg_boost true
setprop debug.performance.disable_ramp_up_on_frame_drop true
setprop debug.performance.disable_ramp_up_on_input_event true
setprop debug.performance.disable_ramp_up_on_animation true
setprop debug.sf.latch_unsignaled 1
setprop debug.sf.enable_hwc_vds 1
setprop debug.sf.early.app.duration 22100000
setprop debug.sf.early.sf.duration 19600000
setprop debug.sf.earlyGl.app.duration 16300000
setprop debug.sf.earlyGl.sf.duration 11900000
setprop debug.sf.high_fps_early_phase_offset_ns 7500000
setprop debug.sf.hw 1
setprop debug.sf.perf_fps_early_gl_phase_offset_ns 600000
setprop debug.sf.disable_stencil true
setprop debug.sf.high_fps_early_gl_phase_offset_ns 9000000
setprop debug.sf.hw 1
setprop debug.sf.latch_unsignaled 1
setprop debug.sf.no_jit 0
setprop debug.sf.nobg_exec 1
setprop debug.sf.swapinterval 1
setprop debug.performance_schema 1
setprop debug.performance_schema_max_memory_classes 387
setprop debug.systemuicompilerfilter speed
setprop debug.app.performance_restricted false
setprop debug.gr.numframebuffers 3
setprop debug.sf.set_idle_timer_ms 30
setprop debug.sf.showcpu 0
setprop debug.gr.numframebuffers 3
setprop debug.gles.layers EGL_KHR_gl_texture_cubemap_image,EGL_KHR_gl_texture_3D_image,EGL_KHR_gl_renderbuffer_image
setprop debug.vulkan.layers VK_KHR_shared_presentable_image,VK_KHR_16bit_storage,VK_KHR_android_surface
setprop debug.egl.force_msaa false
setprop debug.egl.force_fxaa false
setprop debug.egl.force_taa false
setprop debug.egl.force_smaa false
setprop debug.egl.force_txaa false
setprop debug.cpurend.vsync false
setprop debug.kill_allocating_task 0
setprop debug.overlayui.enable 1
setprop debug.hwui.texture_cache_size 0
setprop debug.force_rtl false
setprop debug.hw2d.force true
setprop debug.hw3d.force true
setprop debug.hwui.render_quality high
setprop debug.egl.profiler 0
setprop debug.egl.log_config 0
setprop debug.surface_flinger.vsync_sf_event_phase_offset_ns 0
setprop debug.systemui.compilerfilter speed
}

#bloatware remover
settings_bloatware=(
"com.trinetvpn.prov2"
"com.biomes.vanced"
"com.voraz.zombie.extraction.shooter"
"com.smartlife.nebula"
"wp.wattpad"
"com.cerdillac.proccd"
"com.riseupgames.proshot2"
"com.pyypl"
"com.stephaneginier.nomad"
"com.maxmpz.audioplayes"
"com.mediafire.android"
"ru.mail.mailapp"
"com.codeliber.jspro"
"com.codepoint.learnpython3pro"
"com.meenstudio.pybook"
"com.digitalchemy.calculator.freefraction"
"com.sweetrsoft.fakemessenger"
"org.chromium.webapk.ab3fc8c03ce2d9756_v2"
"com.dencreak.dlcalculator"
"com.pinoy.pmedia"
"com.autoliker.miner"
"com.transsion.carlcare"
"net.bat.store"
"com.transsnet.store"
"com.mediaon.apt"
"com.transsion.tecnospot"
"com.funbase.xradio"
"com.talpa.share"
"com.rlk.weathers"
"com.krazeapps.csharpprogrammingcompiler"
"com.google.android.apps.youtube.music"
"com.google.android.calendar"
"com.talpa.hibrowser"
"com.transsion.hiparty"
"com.transsion.magazineservice.hios"
"com.google.android.apps.nbu.files"
"com.google.android.apps.photos"
"com.zaz.translate"
"com.transsion.phonemaster"
"com.google.android.apps.wellbeing"
"com.google.android.apps.meetings"
"com.transsion.magicshow"
"com.facebook.services"
"com.google.android.projection.gearhead"
"com.transsion.plat.appupdate"
"com.google.android.apps.googleassistant"
"com.android.bbkcalculator"
"com.android.BBKClock"
"com.android.bbklog"
"com.android.bbkmusic"
"com.android.bbksoundrecorder"
"com.bbk.account"
"com.bbk.calendar"
"com.bbk.cloud"
"com.bbk.iqoo.logsystem"
"com.bbk.photoframewidget"
"com.bbk.scene.indoor"
"com.bbk.SuperPowerSave"
"com.bbk.theme"
"com.bbk.theme.resources"
"com.baidu.duersdk.opensdk"
"com.baidu.input_vivo"
"com.facebook.appmanager"
"com.facebook.system"
"com.google.android.apps.docs"
"com.google.android.apps.tachyon"
"com.google.android.feedback"
"com.google.android.googlequicksearchbox"
"com.google.android.marvin.talkback"
"com.google.android.music"
"com.google.android.printservice.recommendation"
"com.google.android.tts"
"com.google.android.videos"
"com.qti.qualcomm.deviceinfo"
"com.qualcomm.qti.ims"
"com.qualcomm.qti.lpa"
"com.qti.confuridialer"
"com.qti.dpmserviceapp"
"com.qti.qualcomm.datastatusnotification"
"com.qualcomm.embms"
"com.qualcomm.qti.autoregistration"
"com.qualcomm.qti.callfeaturessetting"
"com.qualcomm.qti.uim"
"com.vivo.browser"
"com.vivo.appfilter"
"com.vivo.ewarranty"
"com.vivo.appstore"
"com.vivo.assistant"
"com.vivo.compass"
"com.vivo.doubleinstance"
"com.vivo.doubletimezoneclock"
"com.vivo.dream.clock"
"com.vivo.dream.music"
"com.vivo.dream.weather"
"com.vivo.easyshare"
"com.vivo.floatingball"
"com.vivo.FMRadio"
"com.vivo.fuelsummary"
"com.vivo.gamewatch"
"com.vivo.globalsearch"
"com.vivo.vivokaraoke"
"com.vivo.livewallpaper.coffeetime"
"com.vivo.livewallpaper.coralsea"
"com.vivo.livewallpaper.floatingcloud"
"com.vivo.livewallpaper.silk"
"com.vivo.magazine"
"com.vivo.mediatune"
"com.vivo.minscreen"
"com.vivo.motormode"
"com.vivo.carmode"
"com.vivo.numbermark"
"com.vivo.pushservice"
"com.vivo.safecentercom.vivo.scanner"
"com.vivo.setupwizard"
"com.vivo.sim.contacts"
"com.vivo.smartmultiwindow"
"com.vivo.smartshot"
"com.vivo.translator"
"com.vivo.unionpay"
"com.vivo.video.floating"
"com.vivo.videoeditor"
"com.vivo.weather"
"com.vivo.weather.provider"
"com.vivo.website"
"com.vivo.widget.calendar"
"com.vlife.vivo.wallpaper"
"com.kikaoem.vivo.qisiemoji.inputmethod"
"com.android.bips"
"com.android.bookmarkprovider"
"com.android.calendar"
"com.android.cellbroadcastreceiver"
"com.android.cellbroadcastreceiver.overlay.common"
"com.android.dreams.basic"
"com.android.dreams.phototable"
"com.android.emergency"
"com.android.hotwordenrollment.okgoogle"
"com.android.printspooler"
"com.android.statementservice"
"com.android.stk"
"com.android.email"
"com.android.thememanager"
"com.android.wallpaper.livepicker"
"com.netflix.partner.activation"
"com.miui.weather2"
"com.miui.yellowpage"
"com.swiftkey.languageprovider"
"com.swiftkey.swiftkeyconfigurator"
"com.xiaomi.discover"
"com.xiaomi.glgm"
"com.xiaomi.joyose"
"com.xiaomi.location.fused"
"com.xiaomi.micloud.sdk"
"com.xiaomi.midrop"
"com.xiaomi.mipicks"
"com.xiaomi.miplay_client"
"com.xiaomi.mirecycle"
"com.xiaomi.oversea.ecom"
"com.xiaomi.payment"
"com.xiaomi.providers.appindex"
"com.xiaomi.xmsf"
"com.miui.providers.weather"
"com.miui.screenrecorder"
"com.miui.translationservice"
"com.miui.translation.kingsoft"
"com.miui.translation.xmcloud"
"com.miui.translation.youdao"
"com.miui.touchassistant"
"com.miui.userguide"
"com.mfashiongallery.emag"
"com.mi.android.globalpersonalassistant"
"com.mi.dlabs.vr"
"com.mi.globalTrendNews"
"com.mi.global.bbs"
"com.mi.global.shop"
"com.mi.webkit.core"
"com.micredit.in"
"com.milink.service"
"com.mipay.wallet.id"
"com.mipay.wallet.in"
"com.miui.analytics"
"com.miui.android.fashiongallery"
"com.miui.bugreport"
"com.miui.cloudbackup"
"com.miui.cloudservice"
"com.miui.cloudservice.sysbase"
"com.miui.micloudsync"
"com.miui.hybrid"
"com.miui.hybrid.accessory"
"com.miui.klo.bugreport"
"com.miui.miservice"
"com.miui.miwallpaper"
"com.miui.msa.global"
"com.sohu.inputmethod.sogou.xiaomi"
"com.xiaomi.account"
"com.xiaomi.calendar"
"com.xiaomi.discover"
"com.xiaomi.channel"
"com.xiaomi.joyose"
"com.xiaomi.micloud.sdk"
"com.xiaomi.location.fused"
"com.xiaomi.mi_connect_service"
"com.xiaomi.micloud.sdk"
"com.xiaomi.midrop"
"com.xiaomi.mipicks"
"com.xiaomi.miplay_client"
"com.xiaomi.mircs"
"com.xiaomi.mirecycle"
"com.xiaomi.mirror"
"com.xiaomi.simactivate.service"
)

#Prevent running in background Unwanted Services
settings_bloatware_service=(
"com.google.android.ims"
"com.google.android.gms"
"com.facebook.katana"
"com.facebook.lite"
"com.facebook.lite.xyz"
"com.facebook.orca"
"com.google.android.youtube"
"com.google.android.gms/com.google.android.libraries.social.mediamonitor.MediaMonitor"
"com.google.android.gms/com.google.android.libraries.social.mediamonitor.MediaMonitorIntentService"
"com.google.android.gms/com.google.android.location.activity.HardwareArProviderService"
"com.google.android.gms/com.google.android.location.copresence.GcmRegistrationReceiver"
"com.google.android.gms/com.google.android.location.copresence.GservicesBroadcastReceiver"
"com.google.android.gms/com.google.android.location.fused.FusedLocationService" 
"com.google.android.gms/com.google.android.location.fused.service.FusedProviderService"
)

#secure tweaks
settings_secure=(
"long_press_timeout 100"
"speed_mode_enable 1"
"refresh_rate_mode 3"
"multi_press_timeout 120"
"long_press_timeout 150"
"customize_power_temperature_control_hbm true"
"customize_power_temperature_control_osie true"
"allow.fast.charging 1"
"customize_power_temperature_control_videosr true"
"power_ui_enable false"
"tap_duration_enabled 1"
"tap_duration_threshold 125"
"tap_exploration_enabled 1"
)

#Global Tweaks
settings_global=(
"net_speed_on_off 1"
"private_dns_mode hostname"
"private_dns_specifier dns.adguard.com"
"foreground_mem_priority high"
"performance.cache_size 360"
"mem_performance 1"
"hardwareAccelerated true"
"storage_preload 1"
"thread_priority highest"
"battery_tip_constants app_restriction_enabled false"
"enable_asset_atlas_persistence 1"
"asset_atlas_background_creation 1"
"customize_max_power_temperature_control_osie 110"
"customize_max_power_temperature_control_videosr 110"
"customize_max_power_temperature_control_hbm 110"
"cpu_max_temp 110"
"fast.xml true"
"persist.perf.cores 8"
"zrn.disable_iptables true"
"GPUTUNER_SWITCH true"
"GPUTURBO_SWITCH true"
"FPSTUNER_SWITCH true"
"GPUTUNER_MODE performance"
"GPUTUNER_PERFORMANCE_MODE 1"
"GPUTUNER_PERFORMANCE_MODE_OPEN 1"
"kernel_cpu_thread_reader 1"
"animator_duration_scale 0"
"transition_animation_scale 0"
"window_animation_scale 0"
"sys_uidcpupower 1"
"pointer_speed 6000"
"power_check_max_cpu_1 75"
"power_check_max_cpu_2 75"
"power_check_max_cpu_3 50"
"power_check_max_cpu_4 50"
"gpu_cache_size 256"
"touch.pressure.scale 0.001"
"windowsmgr.max_events_per_sec 180"
"fstrim_mandatory_interval 86400000"
"tcp_congestion_control cubic"
)

#Dev Tweaks
settings_devconfig=(
"thermal cpu_threshold 80000"
"thermal hotplug_threshold 75000"
"thermal hotplug_sampling_period 10000"
"gpu gpu_temperature_limit 75000"
"cpu_power max_cpu_power 0.9"
"cpu_power cpu_max_pwr_mgmnt 0.9"
"gpu max_gpu_power 0.8"
"gpu gpu_max_pwr_mgmnt 0.8"
"jobscheduler optimization_disabled true"
"sysui/composer type auto"
)

#SYSTEM TWEAKS
settings_system=(
"thread_priority highest"
"asset_atlas_background_creation 1"
"cpu_max_temp 110"
"persist.perf.cores 8"
"nearby_scanning_permission_allowed 0"
"touch.surface_flinger.calibration physical"
"touch.input_flinger.calibration physical"
"view.scroll_friction 10"
"pointer_speed 7"
"vibrate_on 0"
"multicore_packet_scheduler 1"
"game_mode 1"
"send_security_reports 0"
"rakuten_denwa 0"
"sys.use_fifo_ui 1"
"gearhead:driving_mode_settings_enabled 0"
"screen_mode_setting 0"
"touch.pressure.scale 0.001"
"windowsmgr.max_events_per_sec 180"
"touch.deviceType touchScreen"
"touch.orientationAware 1"
"touch.gestureMode spots"
"MultitouchMinDistance 0px"
"MultitouchSettleInterval 0.2ms"
"TapInterval 0.3ms"
"TapSlop 0px"
"view.touch_slop 2"
"touch.size.calibration=area"
"touch.size.scale 1.2"
"touch.size.bias -10.0"
"touch.size.isSummed 0"
"touch.toolSize.isSummed 0"
"touch.filter.level 1"
"touch.pressure.calibration physical"
"touch.orientation.calibration linterpolated"
"touch.distance.calibration none"
"touch.distance.scale 1"
"touch.coverage.calibration none"
)

set_tweaks() {
  for devconfig in "${settings_devconfig[@]}"; do
    cmd device_config put "$devconfig"
    done 
  for system in "${settings_system[@]}"; do
    settings put system "$system"
  done
  for global in "${settings_global[@]}"; do
    settings put global "$global"
  done
  for secure in "${settings_secure[@]}"; do
    settings put secure "$secure"
  done
  #Uninstall Unwanted Apps
  for bloatware in "${settings_bloatware[@]}"; do
      pm uninstall -k --user 0 "$bloatware"
  done
  #PREVENT SERVICE RUNNING FROM BACKGROUND
  for stop in "${settings_bloatware_service[@]}"; do
      cmd appops set "$stop" RUN_IN_BACKGROUND ignore
      cmd appops set "$stop" RUN_ANY_IN_BACKGROUND ignore
      cmd appops set "$stop" START_FOREGROUND ignore
      cmd appops set "$stop" INSTANT_APP_START_FOREGROUND ignore
      am force-stop "$stop"
  done
  packages=$(pm list packages -3 | cut -d ":" -f 2)
  opt_in_apps=""
  for package in $packages; do
  if [ "$package" != "me.piebridge.brevent" ]; then
    am force-stop "$package" 
    cmd game mode performance "$package"
    cmd device_config put game_overlay "$package" mode=2,fps=60,downscaleFactor=0.7
    cmd device_config put game_overlay "$package" mode=2,downscaleFactor=0.7
    device_config put game_overlay "$package" mode=2,downscaleFactor=0.7
   opt_in_apps+="$package,"
    fi
done
   #Game Driver opt_in, Graphics System Driver opt_out , Developer Driver prerelease_opt_in
   opt_in_apps=${opt_in_apps%,}
   settings put global game_driver_opt_in_apps "$opt_in_apps"
   wm size 576x1312 || wm size reset
   service call uimode 1
   # dumpsys battery set level 1000 || dumpsys battery reset
   pm grant by4a.setedit22 android.permission.WRITE_SECURE_SETTINGS
}

sleep 3s
echo "[+] Installing Modules!"
sleep 1s
echo "[+] Increasing Performance"
sleep 0.5s
echo "[+] Improving Max Framerate"
sleep 0.5s
echo "[+] Disabling Throttling"
sleep 2s
echo "[+] Optimizing Device"
(settings_debug > /dev/null 2>&1 && echo "[!] Successful!") || echo "[!] Failure!"
sleep 1s
echo "[+] Removing Bloatwares"
sleep 0.5s
echo "[+] Killing Background Service"
sleep 0.5s
echo "[+] Applying Game Drivers"
sleep 0.5s
echo "[+] Improving Touch Response"
sleep 0.5s
echo "[+] Softening Touch Movement"
sleep 0.5s
echo "[+] Optimizing Touch Sensitivity"
sleep 0.5s
echo "[+] Adjusting Screen Resolution"
(set_tweaks > /dev/null 2>&1 && echo "[!] Done!") || echo "[!] Failure!"

sleep 1s
echo "[!] Performance Mode!"
sleep 1s
echo "[+] Improved Gaming Experience!"
echo "[!] Do not reboot!"

cmd notification post -S bigtext 'status' "[+] PERFORMANCE MODE [+]" > /dev/null 2>&1
sleep 10s
am start -a android.intent.action.VIEW -d "https://www.facebook.com/reiko.dev" > /dev/null 2>&1
