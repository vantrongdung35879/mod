.class public final Lcom/tencent/gsdk/api/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field public isCore:Z

.field public methodName:Ljava/lang/String;

.field public methodParams:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public resultData:Ljava/lang/String;

.field public succeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/gsdk/api/Event;->name:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/tencent/gsdk/api/Event;->isCore:Z

    .line 4
    iput-object p3, p0, Lcom/tencent/gsdk/api/Event;->methodName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/tencent/gsdk/api/Event;->methodParams:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lcom/tencent/gsdk/api/Event;->succeed:Z

    .line 7
    iput-object p6, p0, Lcom/tencent/gsdk/api/Event;->resultData:Ljava/lang/String;

    return-void
.end method
