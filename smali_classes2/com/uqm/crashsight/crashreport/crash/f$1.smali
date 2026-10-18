.class final Lcom/uqm/crashsight/crashreport/crash/f$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/f;->a(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:J

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:I

.field private synthetic h:Ljava/lang/String;

.field private synthetic i:Lcom/uqm/crashsight/crashreport/crash/f;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/f;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->i:Lcom/uqm/crashsight/crashreport/crash/f;

    iput p2, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->a:I

    iput p3, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->b:I

    iput-wide p4, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->c:J

    iput-object p6, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->f:Ljava/lang/String;

    iput p9, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->g:I

    iput-object p10, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stuckMonitor-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->i:Lcom/uqm/crashsight/crashreport/crash/f;

    iget v3, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->a:I

    iget v4, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->b:I

    iget-wide v5, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->c:J

    iget-object v7, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->e:Ljava/lang/String;

    iget-object v9, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->f:Ljava/lang/String;

    iget v10, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->g:I

    iget-object v11, p0, Lcom/uqm/crashsight/crashreport/crash/f$1;->h:Ljava/lang/String;

    invoke-static/range {v2 .. v11}, Lcom/uqm/crashsight/crashreport/crash/f;->a(Lcom/uqm/crashsight/crashreport/crash/f;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
