.class public Lcom/tencent/tme/live/v0/b;
.super Ljava/lang/Object;


# static fields
.field public static d:Lcom/tencent/tme/live/v0/b;


# instance fields
.field public a:J

.field public b:I

.field public final c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tme/live/v0/b;->a:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/live/v0/b;->b:I

    new-instance v0, Lcom/tencent/tme/live/v0/b$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/v0/b$a;-><init>(Lcom/tencent/tme/live/v0/b;)V

    iput-object v0, p0, Lcom/tencent/tme/live/v0/b;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method
