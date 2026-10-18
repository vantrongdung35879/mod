.class public final Lcom/tencent/beacon/event/a/b;
.super Ljava/lang/Object;
.source "EventStoreBean.java"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/tencent/beacon/event/a/b;->a:J

    .line 3
    iput-wide v0, p0, Lcom/tencent/beacon/event/a/b;->b:J

    .line 4
    iput-wide v0, p0, Lcom/tencent/beacon/event/a/b;->c:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/beacon/event/a/b;->e:[B

    return-void
.end method
