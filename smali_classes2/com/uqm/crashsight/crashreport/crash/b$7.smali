.class final Lcom/uqm/crashsight/crashreport/crash/b$7;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/b;->b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

.field private synthetic b:Lcom/uqm/crashsight/crashreport/crash/b;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    .locals 0

    .line 952
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b$7;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/b$7;->a:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 956
    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b$7;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/b$7;->a:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/crash/b;->c(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 958
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-void
.end method
