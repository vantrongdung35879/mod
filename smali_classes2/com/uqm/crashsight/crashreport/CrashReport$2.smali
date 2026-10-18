.class final Lcom/uqm/crashsight/crashreport/CrashReport$2;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/CrashReport;->testANRCrash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 292
    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    const-string v1, "[CrashSight]"

    if-nez v0, :cond_0

    .line 293
    const-string v0, "Can not test ANR crash because crashSight is disable."

    .line 1013
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 296
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    const-string v0, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    .line 1017
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 301
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start to create a anr crash for test!"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 302
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/c;->k()V

    return-void
.end method
