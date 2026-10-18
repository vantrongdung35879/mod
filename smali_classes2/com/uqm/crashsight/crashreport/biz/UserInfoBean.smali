.class public Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

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

.field public r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Z

.field public t:Ljava/lang/String;

.field public u:J

.field public v:Ljava/lang/String;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->k:J

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->l:Z

    .line 58
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    const/4 v1, -0x1

    .line 65
    iput v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->w:I

    .line 66
    iput v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->p:I

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->q:Ljava/util/Map;

    .line 68
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    .line 69
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->s:Z

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->k:J

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->l:Z

    .line 58
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    const/4 v1, -0x1

    .line 65
    iput v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->w:I

    .line 66
    iput v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->p:I

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->q:Ljava/util/Map;

    .line 68
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    .line 69
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->s:Z

    .line 70
    const-string v1, ""

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->t:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->e:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->f:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->g:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->h:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->i:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->k:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->l:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->w:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->p:I

    .line 99
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/v;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->q:Ljava/util/Map;

    .line 100
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/v;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->o:I

    .line 110
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 112
    :catchall_0
    const-string v2, "old record, with no shouldUploadLite"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 117
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->t:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 119
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->t:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 122
    :catchall_1
    const-string v1, "old record, with no userSceneTagStr"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 127
    :cond_2
    :goto_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->u:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 129
    :catchall_2
    const-string v1, "old record, with no launchTime"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 134
    :goto_4
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->v:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    .line 136
    :catchall_3
    const-string p1, "old record, with no serverEnv"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

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

    .line 147
    iget p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->l:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 158
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->q:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/v;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 164
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/v;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 167
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->s:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 173
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->u:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 175
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
