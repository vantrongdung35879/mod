.class public final synthetic Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tencent/tme/live/i/i$a;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/tencent/tme/live/chat/h$a;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/tme/live/chat/h$a;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;->f$4:Lcom/tencent/tme/live/chat/h$a;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda0;->f$4:Lcom/tencent/tme/live/chat/h$a;

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/tencent/tme/live/chat/h;->a(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/tme/live/chat/h$a;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
