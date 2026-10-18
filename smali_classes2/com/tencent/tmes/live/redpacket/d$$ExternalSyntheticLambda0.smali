.class public final synthetic Lcom/tencent/tmes/live/redpacket/d$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tencent/tme/live/i/i$a;


# instance fields
.field public final synthetic f$0:Lcom/tencent/tmes/live/redpacket/d;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/tencent/tme/live/v0/g;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/tmes/live/redpacket/d;IILcom/tencent/tme/live/v0/g;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/d$$ExternalSyntheticLambda0;->f$0:Lcom/tencent/tmes/live/redpacket/d;

    iput p2, p0, Lcom/tencent/tmes/live/redpacket/d$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/tencent/tmes/live/redpacket/d$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/tencent/tmes/live/redpacket/d$$ExternalSyntheticLambda0;->f$3:Lcom/tencent/tme/live/v0/g;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/d$$ExternalSyntheticLambda0;->f$0:Lcom/tencent/tmes/live/redpacket/d;

    iget v1, p0, Lcom/tencent/tmes/live/redpacket/d$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/tencent/tmes/live/redpacket/d$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/tencent/tmes/live/redpacket/d$$ExternalSyntheticLambda0;->f$3:Lcom/tencent/tme/live/v0/g;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/tencent/tmes/live/redpacket/d;->$r8$lambda$Su8z6-vaxNWrEGMha74MFF_L4NA(Lcom/tencent/tmes/live/redpacket/d;IILcom/tencent/tme/live/v0/g;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
