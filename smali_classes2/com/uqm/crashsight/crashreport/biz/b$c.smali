.class final Lcom/uqm/crashsight/crashreport/biz/b$c;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/biz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:J

.field private synthetic b:Lcom/uqm/crashsight/crashreport/biz/b;


# direct methods
.method public constructor <init>(Lcom/uqm/crashsight/crashreport/biz/b;J)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/biz/b$c;->b:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-wide p2, p0, Lcom/uqm/crashsight/crashreport/biz/b$c;->a:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/b$c;->b:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/biz/b;->b()V

    .line 459
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/b$c;->b:Lcom/uqm/crashsight/crashreport/biz/b;

    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/biz/b$c;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/biz/b;->a(J)V

    return-void
.end method
