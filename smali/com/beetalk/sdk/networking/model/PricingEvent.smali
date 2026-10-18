.class public Lcom/beetalk/sdk/networking/model/PricingEvent;
.super Ljava/lang/Object;
.source "PricingEvent.java"


# instance fields
.field public available_times:I

.field public end_time:J

.field public id:I

.field public items:[I

.field public start_time:J

.field public status:I

.field public total_times:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/beetalk/sdk/networking/model/PricingEvent;->id:I

    .line 5
    const-string v1, ""

    iput-object v1, p0, Lcom/beetalk/sdk/networking/model/PricingEvent;->type:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcom/beetalk/sdk/networking/model/PricingEvent;->start_time:J

    .line 7
    iput-wide v1, p0, Lcom/beetalk/sdk/networking/model/PricingEvent;->end_time:J

    .line 8
    iput v0, p0, Lcom/beetalk/sdk/networking/model/PricingEvent;->available_times:I

    .line 9
    iput v0, p0, Lcom/beetalk/sdk/networking/model/PricingEvent;->total_times:I

    .line 10
    iput v0, p0, Lcom/beetalk/sdk/networking/model/PricingEvent;->status:I

    return-void
.end method
