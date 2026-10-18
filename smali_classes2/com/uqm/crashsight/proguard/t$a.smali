.class public final Lcom/uqm/crashsight/proguard/t$a;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/proguard/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static m:J = -0x1L

.field static n:J = -0x1L

.field static o:I = -0x1


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:J

.field l:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/t$a;->a:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/t$a;->p:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/t$a;->q:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/t$a;->b:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/t$a;->c:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/t$a;->d:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/t$a;->e:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/t$a;->f:J

    .line 56
    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/t$a;->g:J

    .line 57
    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/t$a;->h:J

    .line 58
    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/t$a;->i:J

    .line 59
    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/t$a;->j:J

    .line 60
    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/t$a;->k:J

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/uqm/crashsight/proguard/t$a;->l:I

    return-void
.end method
