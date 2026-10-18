.class final Lcom/uqm/crashsight/core/crash/CrashSight$4;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/core/crash/CrashSight;->testUseAfterFree()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/core/crash/CrashSight;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/core/crash/CrashSight;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/uqm/crashsight/core/crash/CrashSight$4;->a:Lcom/uqm/crashsight/core/crash/CrashSight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 691
    invoke-static {}, Lcom/uqm/crashsight/core/api/crash/UQMCrash;->testUseAfterFree()Ljava/lang/String;

    return-void
.end method
