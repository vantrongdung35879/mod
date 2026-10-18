.class final Lcom/uqm/crashsight/crashreport/biz/b$3;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/biz/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/biz/b;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/biz/b;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/biz/b$3;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/b$3;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/biz/b;->a(Lcom/uqm/crashsight/crashreport/biz/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 423
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method
