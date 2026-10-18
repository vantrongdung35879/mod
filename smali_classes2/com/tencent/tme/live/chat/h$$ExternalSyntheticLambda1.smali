.class public final synthetic Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tencent/tme/live/i/i$a;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/tencent/tme/live/chat/h$a;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;IILcom/tencent/tme/live/chat/h$a;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda1;->f$3:Lcom/tencent/tme/live/chat/h$a;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/tencent/tme/live/chat/h$$ExternalSyntheticLambda1;->f$3:Lcom/tencent/tme/live/chat/h$a;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/tencent/tme/live/chat/h;->a(Landroid/content/Context;IILcom/tencent/tme/live/chat/h$a;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
