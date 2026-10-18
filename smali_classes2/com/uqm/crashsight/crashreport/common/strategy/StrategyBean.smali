.class public Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;",
            ">;"
        }
    .end annotation
.end field

.field public static a:Ljava/lang/String; = ""

.field public static b:Ljava/lang/String; = ""


# instance fields
.field public c:J

.field public d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:J

.field public m:J

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field public s:J

.field public t:J

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->c:J

    .line 29
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->d:J

    const/4 v2, 0x1

    .line 30
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    .line 31
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->f:Z

    .line 32
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->g:Z

    const/4 v3, 0x0

    .line 33
    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->h:Z

    .line 34
    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->i:Z

    .line 36
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->u:Z

    .line 37
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->v:Z

    .line 38
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->w:Z

    .line 40
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->x:Z

    .line 42
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->y:Z

    .line 44
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->z:Z

    .line 46
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->j:Z

    .line 47
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->k:Z

    const-wide/16 v4, 0x7530

    .line 49
    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->m:J

    .line 50
    sget-object v2, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    .line 51
    sget-object v2, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    const/16 v2, 0xa

    .line 54
    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->r:I

    const-wide/32 v4, 0x493e0

    .line 55
    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->s:J

    .line 56
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->t:J

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->d:J

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string v1, "S(@L@L@)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 69
    const-string v1, "*^@K#K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->c:J

    .line 29
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->d:J

    const/4 v2, 0x1

    .line 30
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    .line 31
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->f:Z

    .line 32
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->g:Z

    const/4 v3, 0x0

    .line 33
    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->h:Z

    .line 34
    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->i:Z

    .line 36
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->u:Z

    .line 37
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->v:Z

    .line 38
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->w:Z

    .line 40
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->x:Z

    .line 42
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->y:Z

    .line 44
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->z:Z

    .line 46
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->j:Z

    .line 47
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->k:Z

    const-wide/16 v4, 0x7530

    .line 49
    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->m:J

    .line 50
    sget-object v4, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    .line 51
    sget-object v4, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    const/16 v4, 0xa

    .line 54
    iput v4, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->r:I

    const-wide/32 v4, 0x493e0

    .line 55
    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->s:J

    .line 56
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->t:J

    .line 86
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->d:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->f:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->g:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/v;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->q:Ljava/util/Map;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->h:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->i:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->j:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->k:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->m:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->v:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_8

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->w:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->l:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->r:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->s:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->t:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 106
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->f:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 120
    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 121
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->q:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/v;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 125
    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->h:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->i:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 127
    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->j:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 128
    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->k:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 129
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->v:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 131
    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->w:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 132
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->s:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->t:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
